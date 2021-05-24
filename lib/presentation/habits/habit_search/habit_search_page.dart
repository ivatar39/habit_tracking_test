import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_tracking_test/application/habits/habit_search/habit_search_bloc.dart';
import 'package:habit_tracking_test/presentation/injection.dart';
import 'package:habit_tracking_test/presentation/router/app_router.gr.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class HabitSearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<HabitSearchBloc>(
      create: (_) => getIt<HabitSearchBloc>(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: BlocBuilder<HabitSearchBloc, HabitSearchState>(
          builder: (context, state) => FloatingSearchBar(
            physics: const BouncingScrollPhysics(),
            onQueryChanged: (query) {
              if (query.isNotEmpty) {
                context
                    .read<HabitSearchBloc>()
                    .add(HabitSearchEvent.searchHabitsByQuery(query));
              }
            },
            body: Padding(
              padding: const EdgeInsets.only(top: 56.0),
              child: BlocBuilder<HabitSearchBloc, HabitSearchState>(
                  builder: (context, state) {
                return state.map(
                  initial: (e) => Container(),
                  searchInProgress: (e) =>
                      const Center(child: CircularProgressIndicator()),
                  searchFailure: (e) => Text(
                      e.failure.maybeMap(orElse: () => 'Unexpected error')),
                  searchCompleted: (e) => ListView.builder(
                    itemCount: e.habits.size,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          context.router.push(HabitFormPageRoute(
                              editedHabit: e.habits.get(index)));
                        },
                        child: ListTile(
                          title: Text(e.habits.get(index).name.getOrCrash()),
                          key: Key(e.habits.get(index).id.getOrCrash()),
                        ),
                      );
                    },
                  ),
                );
              }),
            ),
            builder: (context, transition) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(8),
              );
            },
          ),
        ),
      ),
    );
  }
}
