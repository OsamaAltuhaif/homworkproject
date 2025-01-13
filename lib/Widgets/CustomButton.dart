import 'package:flutter/material.dart';

class TuhaifButton extends StatelessWidget {
  final Function? onTab;
  final double? redus;
  final Widget? child;
  final Color? backgroundColor;
  final double? border;
  final double? margin;
  final double? padding;
  const TuhaifButton(
      {super.key,
      this.onTab,
      this.redus,
      this.child,
      this.backgroundColor,
      this.border,
      this.margin,
      this.padding});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTab,
      onForcePressStart: (_) {
        Colors.green;
      },
      child: Container(
        padding: EdgeInsets.all(padding!),
        margin: EdgeInsets.all(margin!),
        child: child,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(redus!),
          border: Border.all(
            style: BorderStyle.solid,
            width: this.border!,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
