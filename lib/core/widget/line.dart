import 'package:crazy_fpl/core/constance/colors.dart';
import 'package:flutter/material.dart';


class Line extends StatelessWidget {
  const Line({Key? key, this.paddingHeight, this.color}) : super(key: key);
  final double? paddingHeight;
  final Color ?color ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: paddingHeight ?? 20,
      ),

      color: color ?? AppColors.whiteLight,
      height: 5,
      width: double.infinity,
    );
  }
}
