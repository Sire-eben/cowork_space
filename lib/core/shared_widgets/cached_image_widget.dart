import 'package:breej_hub_mobile/core/utils/__utils.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CachedImageWidget extends StatelessWidget {
  const CachedImageWidget({
    super.key,
    required this.imageUrl,
    this.errorText,
    this.height = 40,
    this.width = 40,
    this.borderWidth = 2,
    this.borderColor = Colors.transparent,
    this.borderRadius,
    this.fontSize,
    this.fit,
    this.isProfile = false,
    this.clickable = false,
    this.decoration,
    this.bgColor,
  });

  final String imageUrl;
  final String? errorText;
  final double height, width, borderWidth;
  final Color borderColor;
  final BoxFit? fit;
  final BorderRadiusGeometry? decoration;
  final double? borderRadius, fontSize;
  final bool isProfile, clickable;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      height: height,
      width: width,
      imageBuilder: (context, imageProvider) {
        return Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: bgColor ?? Colors.grey.shade100,
            border: Border.all(width: borderWidth, color: borderColor),
            borderRadius: decoration ?? BorderRadius.circular(borderRadius ?? 100),
            image: DecorationImage(image: imageProvider, fit: fit ?? BoxFit.cover),
          ),
        );
      },
      errorWidget: (context, url, error) => Container(
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 100),
          color: bgColor ?? Colors.white54,
        ),
        child: errorText != null
            ? Text(
                errorText ?? '',
                style: AppStyles.raleway16Md.copyWith(
                  fontWeight: FontWeight.w800,
                  fontSize: fontSize ?? 16,
                ),
              )
            : Icon(CupertinoIcons.person),
      ),
      placeholder: (context, url) => Container(
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: bgColor ?? Colors.grey.shade100,
          borderRadius: BorderRadius.circular(borderRadius ?? 100),
        ),
        child: CupertinoActivityIndicator(),
      ),
    );
  }
}
