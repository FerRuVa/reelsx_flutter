import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';

class SmImage extends StatelessWidget {
  const SmImage({
    super.key,
    required this.src,
    this.width = 100,
    this.height = 100,
    this.fit,
    this.radius = BorderRadius.zero,
  });

  final String src;
  final double width;
  final double height;
  final BoxFit? fit;
  final BorderRadius radius;

  bool _isUrl(String src) {
    const urlPattern =
        r'^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$';
    final regex = RegExp(urlPattern);
    return regex.hasMatch(src);
  }

  bool _isBase64(String src) {
    const base64Pattern =
        r'^(?:[A-Za-z0-9+/]{4})*?(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$';
    final regex = RegExp(base64Pattern);
    return regex.hasMatch(src) && src.length % 4 == 0;
  }

  Uint8List _decodeBase64(String base64String) {
    return base64Decode(base64String);
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: radius,
      child: _isUrl(src)
          ? Image.network(
              src,
              width: width,
              height: height,
              fit: fit,
              errorBuilder: (_, __, ___) => _ImgError(
                width: width,
                height: height,
                fit: fit,
              ),
            )
          : _isBase64(src)
              ? Image.memory(
                  _decodeBase64(src),
                  width: width,
                  height: height,
                  fit: fit,
                  errorBuilder: (_, __, ___) => _ImgError(
                    width: width,
                    height: height,
                    fit: fit,
                  ),
                )
              : Image.asset(
                  src,
                  width: width,
                  height: height,
                  fit: fit,
                  errorBuilder: (_, __, ___) => _ImgError(
                    width: width,
                    height: height,
                    fit: fit,
                  ),
                ),
    );
  }
}

class _ImgError extends StatelessWidget {
  const _ImgError({
    this.width = 100,
    this.height = 100,
    this.fit,
  });

  final double width;
  final double height;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "RxAssets.logo",
      width: width,
      height: height,
      fit: fit,
    );
  }
}
