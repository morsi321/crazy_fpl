import 'package:crazy_fpl/core/widget/BoxColor.dart';
import 'package:crazy_fpl/feauters/main%20screen/presentation/view/widget/appbar_custom.dart';
import 'package:crazy_fpl/feauters/main%20screen/presentation/view/widget/main_screen_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/constance/colors.dart';

class MainScreenView extends StatelessWidget {
  const MainScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:AppBarCustom(),
      body: MainScreenViewBody(),
    );
  }
}
