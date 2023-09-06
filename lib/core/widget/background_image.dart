import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key, required this.child, this.url, this.opacity});
  final String? url;
  final double ? opacity;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
          image: DecorationImage(
              image: url==null ? const AssetImage(
                'assets/images/logo.png',
              ):Image.network("$url",fit: BoxFit.cover,height: 1000,).image,
              colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(opacity??0.05),
                BlendMode.modulate,
              ))),
      child: child,
    );
  }
}
