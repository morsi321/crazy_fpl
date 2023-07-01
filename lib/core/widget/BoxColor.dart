import 'package:crazy_fpl/core/extension/MediaQueryValues.dart';
import 'package:flutter/material.dart';

class BoxColor extends StatelessWidget {
  const BoxColor({
    Key? key,
    required this.child,
    this.color,
    this.width,
    this.height,
    this.borderRadius,
  }) : super(key: key);
  final Widget child;
  final Color? color;
  final double? width;
  final double? height;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? context.width * .44,
      height: height ?? context.height * .07,
      decoration: BoxDecoration(
        color: color ?? Colors.white.withOpacity(.3),
        borderRadius: borderRadius ?? BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 7,
            blurRadius: 5,
            offset: const Offset(0, 1),
          ), // changes position of shadow
        ],
      ),
      child: Center(child: child),
    );
  }
}
