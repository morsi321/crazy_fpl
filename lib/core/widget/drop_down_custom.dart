import 'package:crazy_fpl/core/constance/colors.dart';
import 'package:crazy_fpl/core/extension/MediaQueryValues.dart';
import 'package:flutter/material.dart';

class DroDownCustom extends StatelessWidget {
  const DroDownCustom(
      {Key? key,
      required this.onTap,
      required this.items,
      required this.labelDropDown,
      required this.selectedValue,
      this.width,
      this.colorBorder,
      required this.disable})
      : super(key: key);
  final Function(String?) onTap;
  final List<String> items;
  final String labelDropDown;
  final double? width;
  final String selectedValue;
  final Color? colorBorder;
  final bool disable;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? context.width * 0.8,
      height: 62,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration:  BoxDecoration(
        color: AppColors.whiteLight,
      ),
      child: ButtonTheme(
        materialTapTargetSize: MaterialTapTargetSize.padded,
        child: DropdownButton<String>(
          dropdownColor: const Color.fromRGBO(28, 22, 54, 10),
          hint:  Text(labelDropDown),
          style: const TextStyle(color: Colors.white, fontSize: 18),
          isExpanded: true,
          value: selectedValue,
          elevation: 16,
          underline: DropdownButtonHideUnderline(
            child: Container(),
          ),
          onChanged: disable
              ? null
              : (String? newValue) {
                  onTap(newValue);
                },
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              alignment: Alignment.center,
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
