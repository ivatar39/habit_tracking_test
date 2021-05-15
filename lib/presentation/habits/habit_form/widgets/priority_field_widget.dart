import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:habit_tracking_test/application/habits/habit_form/habit_form_bloc.dart';
import 'package:habit_tracking_test/domain/habits/value_objects.dart';

class PriorityField extends HookWidget {
  const PriorityField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HabitFormBloc, HabitFormState>(
      buildWhen: (p, c) => p.isEditing != c.isEditing,
      builder: (context, state) {
        final low = Priority.low();
        final medium = Priority.medium();
        final high = Priority.high();

        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: DropdownButtonFormField<Priority>(
            items: [
              DropdownMenuItem(
                value: low,
                child: Text(low.getOrCrash()),
              ),
              DropdownMenuItem(
                value: medium,
                child: Text(medium.getOrCrash()),
              ),
              DropdownMenuItem(
                value: high,
                child: Text(high.getOrCrash()),
              ),
            ],
            value: state.habit.priority,
            decoration: const InputDecoration(
              labelText: 'Priority',
              counterText: '',
            ),
            onChanged: (value) {
              if (value != null) {
                context
                    .read<HabitFormBloc>()
                    .add(HabitFormEvent.priorityChanged(value.getOrCrash()));
              }
            },
            validator: (_) => state.habit.priority.value.fold(
              (f) => f.maybeMap(
                empty: (f) => 'Cannot be empty',
                exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                orElse: () => null,
              ),
              (r) => null,
            ),
          ),
        );
      },
    );
  }
}
