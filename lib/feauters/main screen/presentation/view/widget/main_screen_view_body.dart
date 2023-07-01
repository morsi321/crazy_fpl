import 'package:crazy_fpl/core/extension/MediaQueryValues.dart';
import 'package:crazy_fpl/core/widget/background_image.dart';
import 'package:crazy_fpl/feauters/main%20screen/presentation/view/widget/title.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widget/BoxColor.dart';
import 'item_type_champion.dart';

class MainScreenViewBody extends StatelessWidget {
  const MainScreenViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundImage(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),

          SizedBox(
            width: double.infinity,
            height: context.height * .40,
            child: const Column(
              children: [
                TitleMainChampionship(title: 'بطولات كريزي فانتازي'),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ItemTypeChampionship(
                        title: 'بطولات فردية',
                        imageUrl: 'assets/images/persion2.png',
                      ),
                      ItemTypeChampionship(
                        title: 'بطولات الفرق',
                        imageUrl: 'assets/images/team.png',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            height: context.height * .40,
            child: const Column(
              children: [
                TitleMainChampionship(title: 'بطولات منظمين'),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ItemTypeChampionship(
                        title: 'بطولات فردية',
                        imageUrl: 'assets/images/persion.png',

                      ),
                      ItemTypeChampionship(
                        title: 'بطولات الفرق',

                        imageUrl: 'assets/images/partners.png',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
