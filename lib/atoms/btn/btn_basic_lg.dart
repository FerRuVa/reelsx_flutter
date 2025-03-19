import 'package:flutter/material.dart';
import 'package:reelsx/atoms/texts/txt_sizes.dart';
import 'package:reelsx/common/constants/rx_colors.dart';
import 'package:reelsx/common/constants/rx_styles.dart';

class BtnBasicLg extends StatelessWidget {
  const BtnBasicLg({
    super.key,
    required this.color,
    this.hoverColor = RxColors.primaryLightPink,
    this.txtColor = RxColors.primaryWhite,
    required this.txt,
    required this.onTap,
    this.width = 201.66,
    this.heigth = 56,
  });

  final Color color;
  final Color hoverColor;
  final Color txtColor;
  final String txt;
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
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Center(
            child: RxTxtH5(
              txt: txt,
              color: txtColor,
              fontFamily: RxFonts.monserratMedium,
            ),
          ),
        ),
      ),
    );
  }
}
