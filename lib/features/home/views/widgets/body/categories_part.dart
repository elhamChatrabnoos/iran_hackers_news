import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackers_news/features/home/controllers/home_controller.dart';

import 'category_item.dart';

class CategoriesPart extends GetView<HomeController> {
  const CategoriesPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.categoriesListLoaded.value
          ? ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.categoriesListPersian.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return InkWell(
                  splashColor: Colors.transparent,
                  onTap: () {
                    controller.getRelatedNews(index);
                  },
                  child: Obx(
                    () => CategoryItem(
                      categoryName: controller.categoriesListPersian[index],
                      isSelected: controller.categorySelectionStatus[index],
                    ),
                  ),
                );
              },
            )
          : const SizedBox(),
    );
  }
}
