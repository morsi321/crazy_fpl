import 'package:crazy_fpl/feauters/ControlCaptain/presentation/views/control_captain_view.dart';
import 'package:crazy_fpl/feauters/Matches/presentation/Views/match_view.dart';
import 'package:crazy_fpl/feauters/Properties_Teams/presentation/views/properties_team.dart';
import 'package:crazy_fpl/feauters/leagues_groups/Data/modles/data_teams.dart';
import 'package:crazy_fpl/feauters/leagues_groups/presentaion/views/groups/leagueGroupView.dart';
import 'package:crazy_fpl/feauters/login_and_signup/presentation/views/loginAndSignupView.dart';
import 'package:crazy_fpl/feauters/main%20screen/Data/models/org_model.dart';
import 'package:crazy_fpl/feauters/main%20screen/presentation/view/main_screen_view.dart';
import 'package:crazy_fpl/feauters/teams/presentation/roud8/round8view.dart';
import 'package:crazy_fpl/feauters/teams/presentation/team_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../feauters/Championships_org/presentation/views/championship.dart';
import '../../feauters/leagues/Data/models/info_League.dart';
import '../../feauters/leagues/presentation/views/leagues_view.dart';
import '../../feauters/matches league group/views/matches_league_group_view.dart';
import '../../feauters/teams/Data/modles/matches_team.dart';

class AppRouter {
  static String mainScreen = '/';
  static String teamChampionshipCFPL = '/teamChampionshipCFPL';
  static String leagues = '/leagues';
  static String team1000 = '/team1000';
  static String leagueGroups = '/LeagueGroups';
  static String teamView = '/teamView';
  static String round8 = '/round8';
  static String matchesLeagueGroups = '/matchesLeagueGroups';
  static String matchesTeams = '/matchesTeams';
  static String loginAndSignUp = '/loginAndSignUp';
  static String controlCaptain = '/controlCaptain';
  static String propertiesTeam = '/propertiesTeam';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: loginAndSignUp,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginAndSignUp();
        },
      ),GoRoute(
        path: propertiesTeam,
        builder: (BuildContext context, GoRouterState state) {
          return  PropertiesTeam(data: state.extra as Map);
        },
      ),
      GoRoute(
        path: controlCaptain,
        builder: (BuildContext context, GoRouterState state) {
          return const ControlCaptainView();
        },
      ),
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
      ),
      GoRoute(
        path: leagues,
        builder: (BuildContext context, GoRouterState state) {
          return LeaguesView(
            infoLeague: state.extra as InfoLeague,
          );
        },
      ),
      GoRoute(
        path: round8,
        builder: (BuildContext context, GoRouterState state) {
          return Round8view(
            infoLeague: state.extra as InfoLeague,
          );
        },
      ),
      GoRoute(
        path: leagueGroups,
        builder: (BuildContext context, GoRouterState state) {
          return LeagueGroupView(
            infoLeague: state.extra as InfoLeague,
          );
        },
      ),
      GoRoute(
        path: teamView,
        builder: (BuildContext context, GoRouterState state) {
          return TeamView(
            teams: state.extra as DataTeams,
          );
        },
      ),
      GoRoute(
        path: matchesLeagueGroups,
        builder: (BuildContext context, GoRouterState state) {
          return MatchesLeagueGroupsView(
            matchesTeam: state.extra as MatchesTeam,
          );
        },
      ),
      GoRoute(
        path: matchesTeams,
        builder: (BuildContext context, GoRouterState state) {
          return MatchView(
            infoLeague: state.extra as InfoLeague,
          );
        },
      ),
    ],
  );
}
