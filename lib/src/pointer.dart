import 'package:flutter/widgets.dart';

class Pointer extends StatelessWidget {
  const Pointer({required this.child, this.transparent = true, super.key});

  final Widget child;
  final bool transparent;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(ignoring: transparent, child: child);
  }
}
