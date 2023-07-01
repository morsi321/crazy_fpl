import 'package:crazy_fpl/feauters/main%20screen/presentation/view/main_screen_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crazy FPL',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(28, 22, 54, .9),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainScreenView(),
    );
  }
}
