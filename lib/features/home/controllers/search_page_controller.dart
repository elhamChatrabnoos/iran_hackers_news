import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hackers_news/features/home/models/search_result_model.dart';
import 'package:hackers_news/features/news_details/models/news_details_model.dart';
import '../../../app/config/app_helper.dart';
import '../repositories/home_repositories.dart';

class SearchPageController extends GetxController {
  late HomeRepositories homeRepositories =
      HomeRepositories(AppHelper.dioConfig.dio);

  RxList<NewsDetailsModel> searchResultList = RxList([]);
  RxBool searchResultLoading = false.obs;
  RxBool nothingFound = false.obs;
  TextEditingController searchBoxController = TextEditingController();
  Timer? timer;

  Future searchItem() async {
    nothingFound(false);
    timer?.cancel();
    timer = Timer(const Duration(milliseconds: 800), () async {
      searchResultLoading(true);
      searchResultList([]);
      final result = await homeRepositories
          .searchItems(searchBoxController.text)
          .onError((error, stackTrace) => SearchResultModel());
      searchResultList(result.searchResault);
      if(result.searchResault is String){
        nothingFound(true);
      }
      if(searchResultList.isEmpty){
        nothingFound(true);
      }
      searchResultLoading(false);
    });
  }
}
