import 'package:crazy_fpl/core/widget/appbar_custom.dart';
import 'package:crazy_fpl/feauters/main%20screen/presentation/view/widget/drawer.dart';
import 'package:crazy_fpl/feauters/main%20screen/presentation/view/widget/main_screen_view_body.dart';
import 'package:flutter/material.dart';


class MainScreenView extends StatelessWidget {
  const MainScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      drawer:DrawerWidget() ,
      appBar:AppBarCustom(enableMenu: true,),
      body: MainScreenViewBody(),
    );
  }
}
