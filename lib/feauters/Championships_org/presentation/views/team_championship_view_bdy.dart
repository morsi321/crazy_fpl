import 'package:crazy_fpl/feauters/Championships_org/presentation/views/widget/content_org.dart';


import 'package:flutter/material.dart';

import '../../../../core/widget/background_image.dart';
import 'widget/gird_champions.dart';
import '../../../main screen/Data/models/org_model.dart';

class TeamChampionshipViewBody extends StatelessWidget {
  const TeamChampionshipViewBody({Key? key, required this.org})
      : super(key: key);

  final Organizer org;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
       SliverToBoxAdapter(
        child: ContentOrg(org: org),
      ),


      SliverList(
          delegate: SliverChildListDelegate(
        [

          BackgroundImage(
            url: org.image,
            opacity: 0.1,
            child: GirdChampionShip(championShip: org.championsShips!, name: org.name!,id: org.id!,),
          ),
          const SizedBox(
            height: 100,
          ),

        ],
      ))
    ]);

  }
}

//   child: Container(
//     color: AppColors.whiteLight,
//     width: double.infinity,
//     padding: const EdgeInsets.all(10),
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         SizedBox(
//           height: context.height * .06,
//         ),
//         NameOrg(name: org.name!),
//
//         DescriptionOrg(description: org.description!),
//
//       ],
//     ),
//   ),
// ),
//
// BackgroundImage(
//   url: org.image,
//   opacity: 0.1,
//   child: GirdChampionShip(championShip: org.championsShips!),
