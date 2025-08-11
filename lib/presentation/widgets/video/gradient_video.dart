import "package:flutter/material.dart";

class GradientVideo extends StatelessWidget {
  final List<Color> gradientColors;
  final List<double> gradientStops;


  const GradientVideo({
    super.key, 
    this.gradientColors = const [
      Colors.transparent,
      Colors.black87
    ],
    this.gradientStops = const [
      0.0,
      1.0
    ],
  }) : assert(
    gradientColors.length == gradientStops.length,
    'gradientColors and gradientStops must have the same length'
  );

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColors,
            stops: gradientStops,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}