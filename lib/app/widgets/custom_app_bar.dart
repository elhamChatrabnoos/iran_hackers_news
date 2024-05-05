import 'package:flutter/material.dart';

import '../config/app_theme.dart';
import 'custom_text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.title, this.widget});

  final String? title;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      foregroundColor: AppTheme.secondary,
      backgroundColor: AppTheme.onSecondary,
      pinned: true,
      expandedHeight: 70,
      title: Center(
        child: title != null ? CustomText(
          text: title!,
        ) : widget,
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: AppTheme.secondaryContainer,
            gradient: LinearGradient(
              colors: [AppTheme.onSecondary, AppTheme.onTertiary],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
    );
  }
}
