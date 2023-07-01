import 'package:flutter/material.dart';

import '../../../../../core/widget/BoxColor.dart';

class TitleMainChampionship extends StatelessWidget {
  const TitleMainChampionship({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BoxColor(
        width: double.infinity,
        color: Colors.white.withOpacity(0.1),
        height: 50,
        child: Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontFamily: 'janna', fontSize: 20),
        ),
      ),
    );
  }
}
