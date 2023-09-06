import 'package:crazy_fpl/feauters/leagues/Data/presentation/views/leagues_view.dart';
import 'package:crazy_fpl/feauters/main%20screen/Data/models/org_model.dart';
import 'package:crazy_fpl/feauters/main%20screen/presentation/view/main_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../feauters/Championships_org/presentation/views/championship.dart';
import '../../feauters/leagues/Data/models/info_League.dart';

class AppRouter {
  static String mainScreen = '/';
  static String teamChampionshipCFPL = '/teamChampionshipCFPL';
  static String leagues = '/leagues';
  static String team1000 = '/team1000';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: mainScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const MainScreenView();
        },
      ),
      GoRoute(
        path: teamChampionshipCFPL,
        builder: (BuildContext context, GoRouterState state) {
          return ChampionshipsOrg(
            org: state.extra as Organizer,
          );
        },
      ), GoRoute(
        path: leagues,
        builder: (BuildContext context, GoRouterState state) {
          return LeaguesView(
            infoLeague: state.extra as InfoLeague,
          );
        },
      ),


    ],
  );
}
