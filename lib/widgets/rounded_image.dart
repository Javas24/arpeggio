import 'package:arpeggio/constants/sizes.dart';
import 'package:flutter/material.dart';

class ArpRoundedImage extends StatelessWidget {
  const ArpRoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyIMageRadius = true,
    this.border,
    this.backgroundColor = Colors.transparent,
    this.fit = BoxFit.cover,
    this.padding = const EdgeInsets.only(left: 0, right: 0),
    this.isNetworkImage = false,
    this.onPressed,
    this.borderRadius = ArpSizes.md,
    this.backgroundTransparent = Colors.transparent,
  });

  final double? height;
  final double? width;
  final String imageUrl;
  final bool applyIMageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final Color backgroundTransparent;
  final BoxFit? fit;
  final EdgeInsets? padding;
  final bool isNetworkImage;
  final void Function()? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          borderRadius: applyIMageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: Image(
              image: isNetworkImage
                  ? NetworkImage(imageUrl)
                  : AssetImage(imageUrl) as ImageProvider,
              fit: fit),
        ),
      ),
    );
  }
}
