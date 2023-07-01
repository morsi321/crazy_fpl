import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constance/colors.dart';

class AppBarCustom extends StatefulWidget  implements PreferredSizeWidget{
  const AppBarCustom({Key? key})

      : preferredSize = const Size.fromHeight(kToolbarHeight),
  super(key: key);

  @override
  final Size preferredSize;

  @override
  State<AppBarCustom> createState() => _AppBarCustomState();


}

class _AppBarCustomState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    return   PreferredSize(
preferredSize: const Size.fromHeight(160),

      child: Container(
        color: Colors.white.withOpacity(.1),
        child: AppBar(
          title:  const Text("Crazy Fantasy",style: TextStyle(fontSize: 20,fontFamily: 'janna',color: Colors.white)  ),
          backgroundColor: secondColor,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu, size: 30,color: Colors.white,),
            ),],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
