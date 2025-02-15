import 'package:flutter/material.dart';

class UnfocusWidget extends StatelessWidget {
  const UnfocusWidget({required this.child, super.key});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: child,
    );
  }
}
