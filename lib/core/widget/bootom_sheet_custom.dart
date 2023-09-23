import 'package:flutter/material.dart';

void showBottomSheetCustom(BuildContext context, Widget child) {
  showModalBottomSheet(
    barrierColor: Colors.black.withOpacity(.3),
    isScrollControlled: true,

    backgroundColor: Colors.black,
  context: context,
    builder: (BuildContext context) {
      return child;
    },
  );
}
