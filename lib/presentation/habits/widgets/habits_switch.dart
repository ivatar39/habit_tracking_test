import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HabitsSwitch extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final toggleGoodHabitsState = useState(true);
    final toggleBadHabitsState = useState(false);

    return ToggleButtons(
      isSelected: <bool>[
        toggleGoodHabitsState.value,
        toggleBadHabitsState.value,
      ],
      onPressed: (index) {
        switch (index) {
          case 0:
            toggleGoodHabitsState.value = true;
            toggleBadHabitsState.value = false;
            break;
          case 1:
            toggleGoodHabitsState.value = false;
            toggleBadHabitsState.value = true;
            break;
        }
      },
      children: const [
        Icon(Icons.thumb_up),
        Icon(Icons.thumb_down),
      ],
    );
  }
}
