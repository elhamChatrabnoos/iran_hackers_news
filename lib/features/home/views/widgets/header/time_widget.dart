import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackers_news/app/config/app_size.dart';
import 'package:hackers_news/app/config/app_theme.dart';
import 'package:hackers_news/app/widgets/custom_text.dart';
import 'package:hackers_news/features/home/controllers/home_controller.dart';

class TimeWidget extends GetView<HomeController> {
  const TimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Obx(
          () => CustomText(
            text: controller.currentTime.value,
            fontColor: AppTheme.secondary,
            fontSize: AppSize.large_2,
          ),
        ),
        const SizedBox(width: 5),
        const Icon(
          Icons.access_time,
          color: AppTheme.secondary,
        ),
      ],
    );
  }
}
