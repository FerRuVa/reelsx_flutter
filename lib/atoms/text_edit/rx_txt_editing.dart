import 'package:flutter/material.dart';
import 'package:reelsx/common/constants/rx_colors.dart';

class RxTxtEditing extends StatefulWidget {
  const RxTxtEditing({
    super.key,
    required this.controller,
    this.prefixIcon,
    this.suffixIcon,
    required this.hintText,
    this.onChanged,
    this.autoFocus = true,
    this.enable = true,
    this.styleHint = RxColors.gray197,
    this.maxLength,
    this.textAlign = TextAlign.center,
    this.textAlignVertical = TextAlignVertical.center,
    this.borderColor = RxColors.gray197,
    this.focusedBorderColor = Colors.blue,
    this.obscuredText = false,
  });

  final TextEditingController controller;
  final String hintText;
  final Function(String)? onChanged;
  final int? maxLength;
  final bool? autoFocus;
  final bool? enable;
  final Color? styleHint;
  final TextAlign textAlign;
  final TextAlignVertical textAlignVertical;
  final Color borderColor;
  final Color focusedBorderColor;
  final bool obscuredText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  @override
  State<RxTxtEditing> createState() => _RxTxtEditingState();
}

class _RxTxtEditingState extends State<RxTxtEditing> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: 250,
        height: 30,
        child: TextField(
          controller: widget.controller,
          textAlignVertical: widget.textAlignVertical,
          textAlign: widget.textAlign,
          maxLines: 1,
          autofocus: widget.autoFocus!,
          enabled: widget.enable,
          onChanged: widget.onChanged,
          maxLength: widget.maxLength,
          obscureText: widget.obscuredText,
          style: TextStyle(color: widget.styleHint),
          cursorColor: RxColors.gray197,
          decoration: InputDecoration(
            counterText: '',
            contentPadding: const EdgeInsets.symmetric(vertical: 5),
            fillColor: RxColors.gray197,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: widget.borderColor),
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: widget.focusedBorderColor),
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: widget.borderColor),
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            hintText: widget.hintText,
            prefixIcon: widget.prefixIcon,
            suffixIcon: widget.suffixIcon,
            hintStyle: TextStyle(
              color: widget.styleHint,
            ),
          ),
        ),
      ),
    );
  }
}
