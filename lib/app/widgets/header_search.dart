import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackers_news/app/config/app_size.dart';
import 'package:hackers_news/app/config/app_texts.dart';
import 'package:hackers_news/app/config/app_theme.dart';
import 'package:hackers_news/app/widgets/custom_text_field.dart';

import '../../features/home/controllers/search_page_controller.dart';

class HeaderSearchField extends GetView<SearchPageController>{
  const HeaderSearchField({super.key, this.onTap, this.searchBoxController});

  final Function()? onTap;
  final TextEditingController? searchBoxController;

  @override
  Widget build(BuildContext context) {
    return  CustomTextField(
      controller: searchBoxController,
      onChanged: (value) {
        controller.searchItem();
      },
      onTap: onTap,
      readOnly: searchBoxController == null,
      autofocus: searchBoxController != null,
      enableBorder: false,
      margin: 30,
      height: 40,
      contentPadding: EdgeInsets.zero,
      fillColor: AppTheme.onPrimary,
      hintText: AppText.search,
      cursorColor: AppTheme.secondary,
      textColor: AppTheme.secondary,
      fontSize: AppSize.medium_2,
      hintStyle: const TextStyle(
        fontSize: AppSize.medium_1,
        color: AppTheme.primaryContainer,
      ),
      prefixIcon: const Icon(
        Icons.search,
        size: 20,
        color: AppTheme.primaryContainer,
      ),
    );
  }
}
