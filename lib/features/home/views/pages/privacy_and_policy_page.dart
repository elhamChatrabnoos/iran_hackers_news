import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackers_news/app/config/app_size.dart';
import 'package:hackers_news/app/config/app_texts.dart';
import 'package:hackers_news/app/widgets/custom_app_bar.dart';
import 'package:hackers_news/app/widgets/custom_text.dart';

class PrivacyAndPolicyPage extends StatelessWidget {
  const PrivacyAndPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        CustomAppBar(title: AppText.privacyPolicy),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: AppText.privacyPolicyTitle,
                  fontWeight: FontWeight.bold,
                  fontSize: AppSize.large_1
                ),
                SizedBox(height: 10),
                CustomText(
                  height: 2,
                  textAlign: TextAlign.justify,
                  text: AppText.privacyPolicyContent,
                  overflow: TextOverflow.clip,
                ),
                SizedBox(height: 10),
                CustomText(text: AppText.emailAddress),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
