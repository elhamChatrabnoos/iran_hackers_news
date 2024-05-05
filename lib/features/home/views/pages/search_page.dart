import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackers_news/app/config/app_texts.dart';
import 'package:hackers_news/app/widgets/custom_app_bar.dart';
import 'package:hackers_news/app/widgets/custom_text.dart';
import 'package:hackers_news/app/widgets/header_search.dart';
import 'package:hackers_news/features/home/controllers/search_page_controller.dart';
import 'package:hackers_news/features/home/views/widgets/news_item_loading.dart';
import 'package:hackers_news/features/home/views/widgets/search_item_widget.dart';

class SearchPage extends GetView<SearchPageController> {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomScrollView(
        slivers: [
          CustomAppBar(
            widget: HeaderSearchField(
              searchBoxController: controller.searchBoxController,
            ),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Obx(
                () => controller.nothingFound.value
                    ? const Center(
                        child: CustomText(
                          textAlign: TextAlign.center,
                          text: AppText.nothingFound,
                        ),
                      )
                    : controller.searchResultLoading.value
                        ? const NewsItemLoading()
                        : ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            itemBuilder: (context, index) => SearchItemWidget(
                                newsModel: controller.searchResultList[index]),
                            itemCount: controller.searchResultList.length,
                          ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
