import 'package:flutter/material.dart';
import 'package:hackers_news/app/config/app_size.dart';
import 'package:hackers_news/app/config/app_theme.dart';
import 'package:hackers_news/app/widgets/custom_text.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.date_range_outlined,
          color: AppTheme.secondary,
          size: 20,
        ),
        const SizedBox(width: 5),
        CustomText(
          text: DateTime.now().toPersianDateStr(showDayStr: true),
          fontColor: AppTheme.secondary,
          fontSize: AppSize.medium_1,
        ),
      ],
    );
  }
}
