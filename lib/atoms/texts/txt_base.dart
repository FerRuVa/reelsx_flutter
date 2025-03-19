import 'package:flutter/material.dart';
import 'package:reelsx/common/constants/rx_colors.dart';
import 'package:reelsx/common/constants/rx_styles.dart';


class RxTxtBase extends StatelessWidget {
  const RxTxtBase({
    super.key,
    required this.txt,
    required this.size,
    this.color = RxColors.primaryCherry,
    this.fontFamily = RxFonts.monserratRegular,
    this.maxLines,
    this.textOverflow = TextOverflow.ellipsis,
    this.shadows,
    this.align = TextAlign.left,
  });

  final String txt;
  final double size;
  final Color color;
  final String fontFamily;
  final int? maxLines;
  final TextOverflow textOverflow;
  final List<Shadow>? shadows;
  final TextAlign align;

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontFamily: fontFamily,
        shadows: shadows,
      ),
      overflow: textOverflow,
      maxLines: maxLines,
      textAlign: align,
    );
  }
}
