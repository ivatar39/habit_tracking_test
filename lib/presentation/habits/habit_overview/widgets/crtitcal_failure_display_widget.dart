import 'package:flutter/material.dart';
import 'package:habit_tracking_test/domain/habits/habit_failure.dart';

class CriticalFailureDisplay extends StatelessWidget {
  final HabitFailure failure;

  const CriticalFailureDisplay({
    Key? key,
    required this.failure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            '😱',
            style: TextStyle(fontSize: 100),
          ),
          Text(
            failure.maybeMap(
              insufficientPermission: (_) => 'Insufficient permissions',
              orElse: () => 'Unexpected Error.\nPlease, contact support.',
            ),
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 24),
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.mail),
                SizedBox(
                  width: 4,
                ),
                Text('I NEED HELP'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
