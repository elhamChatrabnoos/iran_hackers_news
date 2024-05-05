import 'package:flutter/material.dart';
import 'package:hackers_news/app/config/app_assets.dart';
import 'package:hackers_news/app/config/app_size.dart';
import 'package:hackers_news/app/config/app_texts.dart';
import 'package:hackers_news/app/config/app_theme.dart';
import 'package:hackers_news/app/widgets/custom_text.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AppAssets.logoImage, height: 90),
        const SizedBox(height: 10),
        const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 10),
            CustomText(
              text: AppText.logoSubTxt,
              fontColor: AppTheme.primary,
              fontWeight: FontWeight.w700,
              fontSize: AppSize.medium_2,
            ),
          ],
        ),
      ],
    );
  }
}
