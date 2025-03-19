import 'package:flutter/material.dart';
import 'package:reelsx/common/constants/rx_colors.dart';
import 'package:reelsx/common/constants/rx_styles.dart';


class RxIcons extends StatelessWidget {
  const RxIcons({
    super.key,
    required this.icon,
    this.color = RxColors.primaryWhite,
    this.size = RxFontSizes.s18,
  });

  final IconData icon;
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: color,
      size: size,
    );
  }
}
