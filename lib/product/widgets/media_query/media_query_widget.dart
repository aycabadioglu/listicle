import 'package:flutter/material.dart';
import 'package:listicle/product/constants/size_constants.dart';

class MediaQueryWidget extends StatelessWidget {
  const MediaQueryWidget({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MediaQuery.withClampedTextScaling(
      minScaleFactor: Sizes.k1,
      maxScaleFactor: Sizes.k1,
      child: child,
    );
  }
}
