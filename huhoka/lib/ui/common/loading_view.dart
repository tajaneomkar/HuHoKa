
import 'package:flutter/material.dart';
import 'package:huhoka/ui/common/app_colors.dart';
import 'package:huhoka/ui/common/ui_helpers.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingView extends StatefulWidget {
  final String? text;

  final Color? backColor;

  final Color? progressColor;

  const LoadingView({Key? key, this.text, this.backColor, this.progressColor})
      : super(key: key);

  @override
  State<LoadingView> createState() => _LoadingViewState();
}

class _LoadingViewState extends State<LoadingView>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: widget.backColor ?? appWhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SizedBox(
            // width: double.maxFinite,
            height: screenHeightPercentage(context, percentage: 0.25),

            child: LoadingAnimationWidget.dotsTriangle(color: kcPrimaryColor, size: 100)
            // Lottie.asset(
            //   'assets/lottie/loading.json',
            //   fit: BoxFit.contain,
            //   onLoaded: (composition) {
            //     _controller.addStatusListener((status) {});
            //
            //     _controller
            //       ..duration = composition.duration
            //       ..forward();
            //   },
            // ),
          ),
        ],
      ),
    );
  }
}
