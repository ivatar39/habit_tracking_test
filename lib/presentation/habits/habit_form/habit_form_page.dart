import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_tracking_test/application/habits/habit_form/habit_form_bloc.dart';
import 'package:habit_tracking_test/domain/habits/habit.dart';
import 'package:habit_tracking_test/presentation/habits/habit_form/widgets/count_field_widget.dart';
import 'package:habit_tracking_test/presentation/habits/habit_form/widgets/frequency_field_widget.dart';
import 'package:habit_tracking_test/presentation/habits/habit_form/widgets/priority_field_widget.dart';
import 'package:habit_tracking_test/presentation/injection.dart';
import 'package:habit_tracking_test/presentation/router/app_router.gr.dart';
import 'package:provider/provider.dart';

import 'widgets/description_field_widget.dart';
import 'widgets/name_field_widget.dart';
import 'widgets/type_field_widget.dart';

class HabitFormPage extends StatelessWidget {
  final Habit? editedHabit;

  const HabitFormPage({
    Key? key,
    required this.editedHabit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<HabitFormBloc>()
        ..add(HabitFormEvent.initialized(optionOf(editedHabit))),
      child: BlocConsumer<HabitFormBloc, HabitFormState>(
        listenWhen: (p, c) =>
            p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
            () {},
            (either) {
              either.fold(
                (failure) {
                  FlushbarHelper.createError(
                      message: failure.map(
                    insufficientPermission: (_) => 'Insufficient permissions ❌',
                    unableToUpdate: (_) =>
                        "Couldn't update the note. Was it deleted from another device?",
                    noInternetConnection: (_) =>
                        'Check your internet connection. Maybe you are offline.',
                    unexpected: (_) =>
                        'Unexpected error occurred, please contact support.',
                  )).show(context);
                },
                (_) {
                  context.router.popUntil((route) =>
                      route.settings.name == HabitsOverviewPageRoute.name);
                },
              );
            },
          );
        },
        buildWhen: (p, c) => p.isSaving != c.isSaving,
        builder: (context, state) {
          return Stack(
            children: [
              const HabitFormPageScaffold(),
              SavingProgressOverlay(isSaving: state.isSaving),
            ],
          );
        },
      ),
    );
  }
}

class SavingProgressOverlay extends StatelessWidget {
  final bool isSaving;

  const SavingProgressOverlay({
    Key? key,
    required this.isSaving,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSaving ? Colors.black.withOpacity(0.8) : Colors.transparent,
        child: Visibility(
          visible: isSaving,
          child: SizedBox.expand(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircularProgressIndicator(),
                const SizedBox(height: 8),
                Text(
                  'Saving',
                  style: Theme.of(context).primaryTextTheme.bodyText2!.copyWith(
                        fontSize: 16,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HabitFormPageScaffold extends StatelessWidget {
  const HabitFormPageScaffold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<HabitFormBloc, HabitFormState>(
          buildWhen: (p, c) => p.isEditing != c.isEditing,
          builder: (context, state) {
            return Text(state.isEditing ? 'Edit a habit' : 'Create a habit');
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              context.read<HabitFormBloc>().add(const HabitFormEvent.saved());
            },
          ),
        ],
      ),
      body: BlocBuilder<HabitFormBloc, HabitFormState>(
        buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
        builder: (context, state) {
          return Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: const [
                  NameField(),
                  DescriptionField(),
                  PriorityField(),
                  TypeField(),
                  CountField(),
                  FrequencyField(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
