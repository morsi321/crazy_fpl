import 'package:crazy_fpl/core/extension/MediaQueryValues.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widget/BoxColor.dart';

class ItemTypeChampionship extends StatelessWidget {
  const ItemTypeChampionship({super.key, required this.title, required this.imageUrl, this.width, this.height});

  final String title;

  final String imageUrl;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return BoxColor(
        color: Colors.white.withOpacity(0.06),
        width: width?? context.width * .45,
        height:height??  context.height * .30,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageUrl,
              width: context.width * .40,
              height:context.height * .20,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white, fontSize: 20, fontFamily: 'janna'),
            ),
          ],
        ));
  }
}
