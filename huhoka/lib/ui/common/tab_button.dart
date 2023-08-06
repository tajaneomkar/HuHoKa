import 'package:flutter/material.dart';
import 'package:huhoka/ui/common/app_colors.dart';

class TabButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;

  const TabButton({
    required this.text,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
              color: isSelected ? kcPrimaryColor : Colors.black,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          if (isSelected)
            Container(
              height: 4,
              width: 20,
              margin: const EdgeInsets.only(top: 4),
              color: kcPrimaryColor,
            ),
        ],
      ),
    );
  }
}
