import 'package:flutter/material.dart';
import 'package:hackers_news/app/config/app_assets.dart';
import 'package:hackers_news/app/config/app_theme.dart';

class HeaderBackground extends StatelessWidget {
  const HeaderBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: AppTheme.secondaryContainer,
        gradient: LinearGradient(
          colors: [AppTheme.onSecondary, AppTheme.onTertiary],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }
}
