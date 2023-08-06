
// import 'package:flutter/material.dart';
// import 'package:huhoka/ui/common/app_colors.dart';
// import 'package:huhoka/ui/common/ui_helpers.dart';


// class EmptyView extends StatefulWidget {
//   final String? text;

//   final Color? backColor;

//   final Color? progressColor;

//   const EmptyView({Key? key, this.backColor, this.progressColor, this.text})
//       : super(key: key);

//   @override
//   State<EmptyView> createState() => _EmptyViewState();
// }

// class _EmptyViewState extends State<EmptyView> with TickerProviderStateMixin {
//   late final AnimationController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(vsync: this);

//     _controller.addStatusListener((status) {
//       if (status == AnimationStatus.completed) {
//         _controller.stop();
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(
//           width: double.maxFinite,
//           height: screenHeightPercentage(context, percentage: 0.55),
//           child: Assets.images.empty.svg(),
//         ),
//         Text(
//           widget.text ?? 'Hey!!! No Data Found...',
//           style: const TextStyle(fontSize: 25, color: kcPrimaryColor),
//         )
//       ],
//     );
//   }
// }
