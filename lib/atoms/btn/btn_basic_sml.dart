import 'package:flutter/material.dart';
import 'package:reelsx/atoms/texts/txt_sizes.dart';
import 'package:reelsx/common/constants/rx_colors.dart';
import 'package:reelsx/common/constants/rx_styles.dart';


class BtnBasicSml extends StatelessWidget {
  const BtnBasicSml({
    super.key,
    required this.color,
    this.hoverColor = RxColors.primaryLightPink,
    this.txtColor = RxColors.primaryWhite,
    required this.txt,
    required this.onTap,
    this.width = 123.32,
    this.heigth = 32,
    this.maxLines = 1,
    this.align = TextAlign.left,
  });

  final Color color;
  final Color hoverColor;
  final Color txtColor;
  final String txt;
  final Function() onTap;
  final double width;
  final double heigth;
  final int maxLines;
  final TextAlign align;

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
          borderRadius: BorderRadius.circular(6),
          color: color,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Center(
            child: RxTxtLg(
              txt: txt,
              maxLines: maxLines,
              color: txtColor,
              fontFamily: RxFonts.monserratSemiBold,
              align: align,
            ),
          ),
        ),
      ),
    );
  }
}
