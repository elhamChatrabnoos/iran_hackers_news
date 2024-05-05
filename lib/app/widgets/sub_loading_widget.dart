import 'package:flutter/material.dart';
import 'package:hackers_news/app/config/app_theme.dart';

class SubLoadingWidget extends StatelessWidget {
  const SubLoadingWidget({
    Key? key,
    this.height,
    this.width,
    this.radius = 16,
    this.color,
  }) : super(key: key);

  final double? height, width;
  final double? radius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius!),
        color: color ?? AppTheme.primaryContainer,
      ),
    );
  }
}
