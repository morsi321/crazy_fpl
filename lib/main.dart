import 'package:bloc/bloc.dart';
import 'package:crazy_fpl/feauters/Championships_org/presentation/view%20model/info_org_cubit.dart';
import 'package:crazy_fpl/feauters/Matches/presentation/view%20model/match_cubit.dart';
import 'package:crazy_fpl/feauters/leagues_groups/presentaion/model%20view/league_group_cubit.dart';

import 'package:crazy_fpl/feauters/main%20screen/presentation/view%20model/org_cubit.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/utils/app_router.dart';
import 'core/utils/bloc_observer.dart';
import 'feauters/leagues/presentation/model view/leagues_cubit.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = MyBlocObserver();

  runApp(const MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => OrgCubit(),
        ), BlocProvider(
          create: (context) => InfoOrgCubit(),
        ), BlocProvider(
          create: (context) =>  LeaguesCubit(),
        ),BlocProvider(
          create: (context) =>  LeagueGroupCubit(),
        ),BlocProvider(
          create: (context) =>  MatchCubit(),
        ),

      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        title: 'Crazy FPL',
        theme: ThemeData(
          fontFamily: 'janna',
          scaffoldBackgroundColor: const Color.fromRGBO(28, 22, 54, .9),
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
      ),
    );
  }
}
