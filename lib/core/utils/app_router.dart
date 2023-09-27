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
import '../../feauters/ControlCaptain/Data/modles/PropertiesTeamModel.dart';
import '../../feauters/classic_league/Data/models/ClassicLeague.dart';
import '../../feauters/classic_league/presentation/views/classic_view.dart';
import '../../feauters/classic_league/presentation/views/team_view/team_classic_view.dart';
import '../../feauters/leagues/Data/models/info_League.dart';
import '../../feauters/leagues/presentation/views/leagues_view.dart';
import '../../feauters/matches league group/presentation/views/matches_league_group_view.dart';
import '../../feauters/open_champion/Presentation/views/open_champion_view.dart';
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
  static String openChampion = '/OpenChampionView';
  static String classicView = '/ClassicView';
  static String teamClassicView = '/TeamClassicView';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: loginAndSignUp,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginAndSignUp();
        },
      ),
      GoRoute(
        path: propertiesTeam,
        builder: (BuildContext context, GoRouterState state) {
          return PropertiesTeam(
            propertiesTeam: state.extra as PropertiesTeamModel,
          );
        },
      ),GoRoute(
        path: teamClassicView,
        builder: (BuildContext context, GoRouterState state) {
          return TeamClassicView(
            classicLeague: state.extra as ClassicLeague,
          );
        },
      ),GoRoute(
        path: classicView,
        builder: (BuildContext context, GoRouterState state) {
          return ClassicView(
            infoLeague: state.extra as InfoLeague,
          );
        },
      ),
      GoRoute(
        path: openChampion,
        builder: (BuildContext context, GoRouterState state) {
          return  OpenChampionView(orgId: state.extra as String,);
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
