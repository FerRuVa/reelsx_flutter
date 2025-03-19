import 'package:flutter/material.dart';
import 'package:reelsx/atoms/texts/txt_base.dart';
import 'package:reelsx/common/constants/rx_styles.dart';
import 'package:reelsx/common/constants/rx_colors.dart';


class SmTxtH1 extends StatelessWidget {
  const SmTxtH1({
    super.key,
    required this.txt,
    this.color = RxColors.blackSecundary,
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

  @override
  Widget build(BuildContext context) {
    return RxTxtBase(
      txt: txt,
      size: RxInsets.sH1,
      color: color,
      fontFamily: fontFamily,
      shadows: shadows,
      textOverflow: textOverflow,
      maxLines: maxLines,
      align: align,
    );
  }
}

class RxTxtH2 extends StatelessWidget {
  const RxTxtH2({
    super.key,
    required this.txt,
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

  @override
  Widget build(BuildContext context) {
    return RxTxtBase(
      txt: txt,
      size: RxInsets.sH2,
      color: color,
      fontFamily: fontFamily,
      shadows: shadows,
      textOverflow: textOverflow,
      maxLines: maxLines,
      align: align,
    );
  }
}

class RxTxtH3 extends StatelessWidget {
  const RxTxtH3({
    super.key,
    required this.txt,
    this.color = RxColors.blackSecundary,
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

  @override
  Widget build(BuildContext context) {
    return RxTxtBase(
      txt: txt,
      size: RxInsets.sH3,
      color: color,
      fontFamily: fontFamily,
      shadows: shadows,
      textOverflow: textOverflow,
      maxLines: maxLines,
      align: align,
    );
  }
}

class RxTxtH4 extends StatelessWidget {
  const RxTxtH4({
    super.key,
    required this.txt,
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

  @override
  Widget build(BuildContext context) {
    return RxTxtBase(
      txt: txt,
      size: RxInsets.sH4,
      color: color,
      fontFamily: fontFamily,
      shadows: shadows,
      textOverflow: textOverflow,
      maxLines: maxLines,
      align: align,
    );
  }
}

class RxTxtH5 extends StatelessWidget {
  const RxTxtH5({
    super.key,
    required this.txt,
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

  @override
  Widget build(BuildContext context) {
    return RxTxtBase(
      txt: txt,
      size: RxInsets.sH5,
      color: color,
      fontFamily: fontFamily,
      shadows: shadows,
      textOverflow: textOverflow,
      maxLines: maxLines,
      align: align,
    );
  }
}

class RxTxtH6 extends StatelessWidget {
  const RxTxtH6({
    super.key,
    required this.txt,
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

  @override
  Widget build(BuildContext context) {
    return RxTxtBase(
      txt: txt,
      size: RxInsets.sH6,
      color: color,
      fontFamily: fontFamily,
      shadows: shadows,
      textOverflow: textOverflow,
      maxLines: maxLines,
      align: align,
    );
  }
}

class RxTxtXs extends StatelessWidget {
  const RxTxtXs({
    super.key,
    required this.txt,
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

  @override
  Widget build(BuildContext context) {
    return RxTxtBase(
      txt: txt,
      size: RxInsets.xs,
      color: color,
      fontFamily: fontFamily,
      shadows: shadows,
      textOverflow: textOverflow,
      maxLines: maxLines,
      align: align,
    );
  }
}

class RxTxtSmall extends StatelessWidget {
  const RxTxtSmall({
    super.key,
    required this.txt,
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

  @override
  Widget build(BuildContext context) {
    return RxTxtBase(
      txt: txt,
      size: RxInsets.sml,
      color: color,
      fontFamily: fontFamily,
      shadows: shadows,
      textOverflow: textOverflow,
      maxLines: maxLines,
      align: align,
    );
  }
}

class RxTxtMdm extends StatelessWidget {
  const RxTxtMdm({
    super.key,
    required this.txt,
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

  @override
  Widget build(BuildContext context) {
    return RxTxtBase(
      txt: txt,
      size: RxInsets.mdm,
      color: color,
      fontFamily: fontFamily,
      shadows: shadows,
      textOverflow: textOverflow,
      maxLines: maxLines,
      align: align,
    );
  }
}

class RxTxtLg extends StatelessWidget {
  const RxTxtLg({
    super.key,
    required this.txt,
    this.color = RxColors.primaryCherry,
    this.fontFamily = RxFonts.monserratRegular,
    this.maxLines,
    this.textOverflow = TextOverflow.ellipsis,
    this.shadows,
    this.align = TextAlign.left,
  });

  final String txt;
  final Color color;
  final String fontFamily;
  final int? maxLines;
  final TextOverflow textOverflow;
  final List<Shadow>? shadows;
  final TextAlign align;

  @override
  Widget build(BuildContext context) {
    return RxTxtBase(
      txt: txt,
      size: RxInsets.lg,
      color: color,
      fontFamily: fontFamily,
      shadows: shadows,
      textOverflow: textOverflow,
      maxLines: maxLines,
      align: align,
    );
  }
}

class RxTxtXl extends StatelessWidget {
  const RxTxtXl({
    super.key,
    required this.txt,
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

  @override
  Widget build(BuildContext context) {
    return RxTxtBase(
      txt: txt,
      size: RxInsets.xl,
      color: color,
      fontFamily: fontFamily,
      shadows: shadows,
      textOverflow: textOverflow,
      maxLines: maxLines,
      align: align,
    );
  }
}
