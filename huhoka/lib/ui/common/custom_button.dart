
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';


import '../common/app_colors.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double? height;
  final List<Color>? gradientColors;
  final String? text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final Color? textColor;
  final Color? backgroundColor;
  final double? width;
  final bool isEnabled;
  final IconData? prefixIcon;
  final bool isLoading;
  final double? indicatorWidth;
  final double? indicatorHeight;
  final double? indicatorSize;
  final Color? buttonColor;
  final Color? iconColor;

  const CustomButton({
    Key? key,
    required this.onPressed,
    this.height,
    this.gradientColors,
    required this.text,
    this.fontSize,
    this.fontWeight = FontWeight.bold,
    this.fontFamily,
    this.textColor,
    this.width,
    this.isEnabled = true,
    this.backgroundColor,
    this.prefixIcon,
    this.isLoading = false,
    this.indicatorWidth,
    this.indicatorHeight,
    this.indicatorSize,
    this.buttonColor,
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: isEnabled ? 1.0 : 0.2,
      child: InkWell(
        onTap: isEnabled ? onPressed : null, // Disable button when not enabled
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              color: buttonColor ?? kcPrimaryColor,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: kcPrimaryColor)),
          child: Center(
            child: isLoading
                ? SizedBox(
                    height: indicatorHeight,
                    width: indicatorWidth,
                    child: LoadingAnimationWidget.fourRotatingDots(
                      color: Colors.white,
                      size: indicatorSize ?? 35,
                    ),
                  )
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (prefixIcon != null)
                        Icon(
                          prefixIcon,
                          color: iconColor ?? Colors.black,
                        ),
                      const SizedBox(width: 8),
                      Text(
                        text ?? "Custom Button",
                        style: TextStyle(
                          fontSize: fontSize,
                          fontWeight: fontWeight,
                          fontFamily: fontFamily,
                          color: textColor,
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
