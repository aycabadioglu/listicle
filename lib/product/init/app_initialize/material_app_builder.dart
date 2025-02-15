import 'package:flutter/material.dart';
import 'package:listicle/product/widgets/gesture/unfocus_widget.dart';
import 'package:listicle/product/widgets/media_query/media_query_widget.dart';

final class MaterialAppBuilder {
  const MaterialAppBuilder._();
  static Widget builder(BuildContext context, Widget? oldChild) {
    var child = oldChild;
    child = UnfocusWidget(child: child);
    child = MediaQueryWidget(child: child);
    return child;
  }
}
