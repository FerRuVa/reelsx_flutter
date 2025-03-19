import 'package:flutter/material.dart';
import 'package:reelsx/common/constants/rx_colors.dart';

class BtnGeneric extends StatelessWidget {
  const BtnGeneric({
    super.key,
    required this.color,
    this.hoverColor = RxColors.primaryLightPink,
    this.txtColor = RxColors.primaryWhite,
    required this.txt,
    required this.onTap,
    this.width = 106.81,
    this.heigth = 44,
  });

  final Color color;
  final Color hoverColor;
  final Color txtColor;
  final Widget txt;
  final Function() onTap;
  final double width;
  final double heigth;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: hoverColor,
      focusColor: hoverColor,
      hoverColor: hoverColor,
      highlightColor: hoverColor,
      onTap: () => onTap(),
      child: Container(
        width: width,
        height: heigth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Center(
            child: txt,
          ),
        ),
      ),
    );
  }
}
