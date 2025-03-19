import 'package:flutter/material.dart';
import 'package:reelsx/atoms/Icons-img/rx_icons.dart';
import 'package:reelsx/common/constants/rx_colors.dart';


class BtnIcon extends StatelessWidget {
  const BtnIcon({
    super.key,
    required this.color,
    this.hoverColor = RxColors.primaryLightPink,
    required this.icon,
    required this.onTap,
    this.size = 30,
  });

  final Color color;
  final Color hoverColor;
  final IconData icon;
  final Function() onTap;
  final double size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: hoverColor,
      focusColor: hoverColor,
      hoverColor: hoverColor,
      highlightColor: hoverColor,
      onTap: () => onTap(),
      child: RxIcons(
        icon: icon,
        color: color,
        size: size,
      ),
    );
  }
}
