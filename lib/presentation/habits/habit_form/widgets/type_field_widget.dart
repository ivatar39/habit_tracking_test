import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_tracking_test/application/habits/habit_form/habit_form_bloc.dart';
import 'package:habit_tracking_test/domain/habits/value_objects.dart';

class TypeField extends StatelessWidget {
  const TypeField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bad = Type.bad();
    final good = Type.good();

    return BlocBuilder<HabitFormBloc, HabitFormState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              RadioListTile<Type>(
                title: Text(bad.getOrCrash()),
                value: bad,
                groupValue: state.habit.type,
                onChanged: (Type? value) {
                  context
                      .read<HabitFormBloc>()
                      .add(HabitFormEvent.typeChanged(bad.getOrCrash()));
                },
              ),
              RadioListTile<Type>(
                title: Text(good.getOrCrash()),
                value: good,
                groupValue: state.habit.type,
                onChanged: (Type? value) {
                  context
                      .read<HabitFormBloc>()
                      .add(HabitFormEvent.typeChanged(good.getOrCrash()));
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
