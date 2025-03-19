import 'package:flutter/material.dart';
import 'package:reelsx/atoms/texts/txt_sizes.dart';
import 'package:reelsx/common/constants/rx_colors.dart';
import 'package:reelsx/common/constants/rx_styles.dart';


class RxTxtLinkXS extends StatelessWidget {
  const RxTxtLinkXS({
    super.key,
    required this.txt,
    required this.onTap,
    this.color = RxColors.primaryCherry,
    this.fontFamily = RxFonts.monserratRegular,
    this.maxLines = 1,
    this.textOverflow = TextOverflow.ellipsis,
    this.shadows,
    this.align = TextAlign.left,
  });

  final String txt;
  final Color color;
  final String fontFamily;
  final int maxLines;
  final TextOverflow textOverflow;
  final List<Shadow>? shadows;
  final TextAlign align;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: RxTxtXs(
        txt: txt,
        color: color,
        fontFamily: fontFamily,
        shadows: shadows,
        textOverflow: textOverflow,
        maxLines: maxLines,
        align: align,
      ),
    );
  }
}

class RxTxtLinkRxall extends StatelessWidget {
  const RxTxtLinkRxall({
    super.key,
    required this.txt,
    required this.onTap,
    this.color = RxColors.primaryCherry,
    this.fontFamily = RxFonts.monserratRegular,
    this.maxLines = 1,
    this.textOverflow = TextOverflow.ellipsis,
    this.shadows,
    this.align = TextAlign.left,
  });

  final String txt;
  final Color color;
  final String fontFamily;
  final int maxLines;
  final TextOverflow textOverflow;
  final List<Shadow>? shadows;
  final TextAlign align;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: RxTxtSmall(
        txt: txt,
        color: color,
        fontFamily: fontFamily,
        shadows: shadows,
        textOverflow: textOverflow,
        maxLines: maxLines,
        align: align,
      ),
    );
  }
}
