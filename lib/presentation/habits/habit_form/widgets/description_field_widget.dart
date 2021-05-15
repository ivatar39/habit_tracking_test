import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:habit_tracking_test/application/habits/habit_form/habit_form_bloc.dart';
import 'package:habit_tracking_test/domain/habits/value_objects.dart';

class DescriptionField extends HookWidget {
  const DescriptionField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    return BlocListener<HabitFormBloc, HabitFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.habit.description.getOrCrash();
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextFormField(
          controller: textEditingController,
          decoration: const InputDecoration(
            labelText: 'Description',
            counterText: '',
          ),
          maxLength: HabitDescription.maxLength,
          maxLines: 5,
          onChanged: (value) => context.read<HabitFormBloc>().add(
                HabitFormEvent.descriptionChanged(value),
              ),
          validator: (_) =>
              context.read<HabitFormBloc>().state.habit.description.value.fold(
                    (f) => f.maybeMap(
                      empty: (f) => 'Cannot be empty',
                      exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                      orElse: () => null,
                    ),
                    (r) => null,
                  ),
        ),
      ),
    );
  }
}
