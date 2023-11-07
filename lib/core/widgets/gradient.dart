import 'package:flutter/material.dart';

import 'package:capture_text/core/styles/styles.dart';

class GradientBackGround extends StatelessWidget {
  final Widget child;

  const GradientBackGround({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: AppColors.gradientColors,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        child
      ],
    );
  }
}
