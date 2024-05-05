import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackers_news/app/config/app_size.dart';
import 'package:hackers_news/features/home/controllers/home_controller.dart';

import '../../../../../app/config/app_theme.dart';
import '../../../../../app/widgets/custom_text.dart';

class CategoryItem extends GetView<HomeController> {
  const CategoryItem({
    required this.categoryName,
    required this.isSelected,
    super.key,
  });

  final bool isSelected;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        top: 10,
        // bottom: 3,
      ),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? AppTheme.secondary : AppTheme.primaryContainer,
          width: 1.5,
        ),
        color: isSelected ? AppTheme.primary : AppTheme.secondary,
        borderRadius: const BorderRadius.all(
          Radius.circular(100),
        ),
      ),
      child: CustomText(
        text: categoryName,
        fontColor: isSelected ? AppTheme.secondary : AppTheme.onSecondary,
        fontSize: AppSize.small_2,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
