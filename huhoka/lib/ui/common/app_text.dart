
import 'package:flutter/material.dart';
import 'package:huhoka/ui/common/app_colors.dart';
import 'package:huhoka/ui/common/text_style.dart';

// const TextAlign kcStartText = TextAlign.start;

class AppText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextAlign? textAlign;
  late final bool? isSingleLined;

  AppText.headingOne(
    this.text, {
    this.textAlign,
    this.isSingleLined,
    Color color = appTextColor,
  }) : style = heading1Style.copyWith(color: color);

  AppText.mainHeading(
    this.text, {
    this.textAlign,
    this.isSingleLined,
    Color color = appTextColor,
  }) : style = mainHeadingStyle.copyWith(
          color: color,
        );

  AppText.headingTwo(
    this.text, {
    this.textAlign,
    this.isSingleLined,
    Color color = appTextColor,
  }) : style = heading2Style.copyWith(
          color: color,
        );

  AppText.headingThree(
    this.text, {
    this.textAlign,
    this.isSingleLined,
    Color color = appTextColor,
  }) : style = heading3Style.copyWith(
          color: color,
        );

  AppText.headline(
    this.text, {
    this.textAlign,
    this.isSingleLined,
    Color color = appTextColor,
  }) : style = headlineStyle.copyWith(
          color: color,
        );

  AppText.subheading(
    this.text, {
    this.textAlign,
    this.isSingleLined,
    Color color = appTextColor,
  }) : style = subheadingStyle.copyWith(
          color: color,
        );

  AppText.caption(
    this.text, {
    this.textAlign,
    this.isSingleLined,
    Color color = appTextColor,
  }) : style = captionStyle.copyWith(color: Color(0xFF7D8394));

  AppText.caption1(
    this.text, {
    this.textAlign,
    this.isSingleLined,
    Color color = appTextColor,
  }) : style = captionStyle1.copyWith(color: color);

  AppText.overline(
    this.text, {
    this.textAlign,
    this.isSingleLined,
    Color color = bodyText,
  }) : style = overlineStyle.copyWith(
          color: color,
        );

  AppText.body1(
    this.text, {
    this.textAlign,
    this.isSingleLined,
    Color color = appTextColor,
  }) : style = body1Style.copyWith(
          color: color,
        );

  AppText.bodyLabel(
    this.text, {
    this.textAlign,
    this.isSingleLined,
    Color color = appLabelColor,
  }) : style = bodyLabel.copyWith(
          color: color,
        );
  AppText.primaryBodyLabel(
    this.text, {
    this.textAlign,
    this.isSingleLined,
    Color color = appPrimaryLabelColor,
  }) : style = bodyLabel.copyWith(
          color: color,
        );

  AppText.body2(
    this.text, {
    this.textAlign,
    this.isSingleLined,
    Color color = appTextColor,
  }) : style = body2Style.copyWith(
          color: color,
        );

  AppText.body3(
    this.text, {
    this.textAlign,
    this.isSingleLined,
    Color color = appTextColor,
  }) : style = body3Style.copyWith(
          color: color,
        );

  AppText.body(
    this.text, {
    this.textAlign,
    this.isSingleLined,
    Color color = appTextColor,
  }) : style = bodyStyle.copyWith(
          color: color,
        );

  AppText.body5(
    this.text, {
    this.textAlign,
    this.isSingleLined,
    Color color = appTextColor,
  }) : style = body5Style.copyWith(
          color: color,
        );

  AppText.body4(
    this.text, {
    this.textAlign,
    this.isSingleLined,
    Color color = appTextColor,
  }) : style = body4Style.copyWith(
          color: Color(0xFF7D8394),
        );

  AppText.body6(
    this.text, {
    this.textAlign,
    this.isSingleLined,
    Color color = appTextColor,
  }) : style = body6Style.copyWith(
          color: color,
        );

  AppText.bodyBold(
    this.text, {
    this.textAlign,
    this.isSingleLined,
    Color color = appTextColor,
  }) : style = bodyBoldStyle.copyWith(
          color: color,
        );

  AppText.bodyTextButton(
    this.text, {
    this.textAlign,
    this.isSingleLined,
    Color color = appTextColor,
  }) : style = bodyStyleTextButton.copyWith(
          color: color,
        );
  AppText.bodyBold2(
    this.text, {
    this.textAlign,
    this.isSingleLined,
    Color color = appTextColor,
  }) : style = bodyBoldStyle2.copyWith(
          color: color,
        );

  @override
  Widget build(BuildContext context) {
    late TextOverflow overflow;
    if (isSingleLined == null || !isSingleLined!) {
      overflow = TextOverflow.clip;
    } else {
      overflow = TextOverflow.ellipsis;
    }

    return Text(
      text,
      style: style.copyWith(),
      overflow: overflow,
      textAlign: textAlign ?? TextAlign.start,
    );
  }
}
