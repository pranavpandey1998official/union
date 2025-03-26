import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  const IconText({
    super.key,
    required this.icon,
    this.text,
    this.textColor,
    this.padding = 3.0,
  });

  final Icon icon;
  final String? text;
  final Color? textColor;

  final double padding;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        icon,
        if (text != null) ...[
          SizedBox(width: padding),
          Text(
            text!,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ],
      ],
    );
  }
}