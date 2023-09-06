
import 'package:crazy_fpl/feauters/main%20screen/Data/models/org_model.dart';
import 'package:flutter/material.dart';

import 'team_championship_view_bdy.dart';

class ChampionshipsOrg extends StatelessWidget {
  const ChampionshipsOrg({super.key, required this.org});
 final Organizer org;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: TeamChampionshipViewBody(org: org,),


    );
  }
}
