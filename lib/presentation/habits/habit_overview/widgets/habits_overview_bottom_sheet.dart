import 'package:flutter/material.dart';

class HabitsOverviewBottomSheet extends StatelessWidget {
  const HabitsOverviewBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      builder: (context) {
        return IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return Column(
                  children: [
                    TextButton(
                        onPressed: () {}, child: const Text('Sort by time')),
                  ],
                );
              },
            );
          },
        );
      },
    );
  }
}
