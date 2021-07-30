import 'package:flutter/material.dart';

class FabButton extends StatelessWidget {
  final double width;
  final double heigth;
  final Color color;
  final Icon icon;

  final Function onClick;

  FabButton(
      {required this.width,
      required this.heigth,
      required this.color,
      required this.icon,
      required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        child: IconButton(
          icon: icon,
          enableFeedback: true,
          onPressed: onClick(),
        ));
  }
}
