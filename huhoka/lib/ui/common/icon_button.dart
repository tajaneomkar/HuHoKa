import 'package:flutter/material.dart';
import 'package:huhoka/ui/common/app_colors.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final Color? iconColor;
  final double? iconSize;
  final Color? backgroundColor;
  final VoidCallback onPressed;

  const CustomIconButton({
    Key? key,
    required this.icon,
    this.iconColor,
    this.iconSize,
    this.backgroundColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4.0,
      shape: const CircleBorder(),
      child: CircleAvatar(
        radius: 14,
        backgroundColor: backgroundColor ?? appWhite,
        child: IconButton(
          icon: Icon(
            icon,
            size: iconSize ?? 14,
            color: iconColor ?? Color(0xFF7D8394),
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
