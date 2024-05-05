import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackers_news/app/config/app_constants.dart';
import 'package:hackers_news/app/config/app_texts.dart';
import 'package:hackers_news/app/config/app_theme.dart';
import 'package:hackers_news/features/home/models/article_model.dart';
import 'package:hackers_news/features/home/models/category_model.dart';
import 'package:hackers_news/features/home/models/search_result_model.dart';
import 'package:hackers_news/features/home/repositories/home_repositories.dart';

import '../../../app/config/app_helper.dart';
import '../models/news_model.dart';

class HomeController extends GetxController {
  /// common variables
  late HomeRepositories homeRepositories =
      HomeRepositories(AppHelper.dioConfig.dio);

  RxInt pageIndex = 0.obs;

  @override
  void onInit() {
    setScrollListener();
    getCurrentTime();
    getTrendsNews();
    super.onInit();
  }

  /// methods

  /// change time
  RxString currentTime = ''.obs;

  void getCurrentTime() {
    Future.delayed(const Duration(seconds: 1), () {
      DateTime dateTime = DateTime.now();
      String hour = '${dateTime.hour}'.padLeft(2, '0');
      String minute = '${dateTime.minute}'.padLeft(2, '0');
      String second = '${dateTime.second}'.padLeft(2, '0');

      currentTime.value = '$hour:$minute:$second';
      getCurrentTime();
    });
  }

  /// get trends news
  RxBool trendNewsLoaded = false.obs;
  RxList<NewsModel> trendNewsList = RxList();

  Future getTrendsNews() async {
    trendNewsLoaded(false);
    final result = await homeRepositories.getTrendNews().onError(
          (error, stackTrace) => [],
        );
    trendNewsList(result);
    trendNewsLoaded(true);
    getCategories();
  }

  /// get categories name
  RxBool categoriesListLoaded = false.obs;
  RxList<bool> categorySelectionStatus = RxList([]);
  RxList<String> categoriesListPersian = RxList();
  RxList<String> categoriesListEnglish = RxList();

  Future getCategories() async {
    categoriesListLoaded(false);
    final result = await homeRepositories.getAllCategories().onError(
          (error, stackTrace) => CategoryModel(),
        );
    categoriesListEnglish(result.allCategory);

    categoriesListPersian.addAll(AppConstants.categoriesItem);
    categoriesListPersian.insert(0, AppText.all);
    categorySelectionStatus(List.filled(categoriesListPersian.length, false));
    categorySelectionStatus[0] = true;
    categoriesListLoaded(true);
    getAllNews(true);
  }

  /// when different tab press
  void getRelatedNews(int index) {
    if (!categorySelectionStatus[index]) {
      // if category dose not select before select it
      categorySelectionStatus.fillRange(
          0, categorySelectionStatus.length, false);
      categorySelectionStatus[index] = true;

      // get related news
      if (index == 0) {
        getAllNews(false);
      } else {
        getCategoriesNews(categoriesListEnglish[index - 1]);
      }
    }
  }

  /// get all news
  RxList<NewsModel> newsList = RxList();
  RxBool firstTimeNewsLoaded = false.obs;

  Future getAllNews(bool isFirstTime) async {
    if (isFirstTime) {
      firstTimeNewsLoaded(false);
    } else {
      itemListLoading(true);
      newsPageNumber.value = 1;
    }
    final result =
        await homeRepositories.getAllNews(1).onError((error, stackTrace) => []);
    newsList(result);
    if (isFirstTime) {
      firstTimeNewsLoaded(true);
    } else {
      itemListLoading(false);
    }
  }

  /// get categories news
  RxBool itemListLoading = false.obs;

  Future getCategoriesNews(String categoryName) async {
    itemListLoading(true);
    final result = await homeRepositories
        .getCategoryNews(categoryName)
        .onError((error, stackTrace) => []);
    newsList(result);
    itemListLoading(false);
  }

  /// paginate
  final ScrollController scrollController = ScrollController();
  RxInt newsPageNumber = 1.obs;

  void setScrollListener() {
    scrollController.addListener(
      () {
        if (scrollController.position.pixels ==
            scrollController.position.maxScrollExtent) {
          getMoreNews();
        }
      },
    );
  }

  /// load more news
  RxBool moreNewsLoading = false.obs;

  Future getMoreNews() async {
    if (newsPageNumber.value < 3 &&
        firstTimeNewsLoaded.value &&
        !itemListLoading.value &&
        !moreNewsLoading.value &&
        categorySelectionStatus[0]) {
      moreNewsLoading(true);
      newsPageNumber.value += 1;
      final result =
          await homeRepositories.getAllNews(newsPageNumber.value).onError(
                (error, stackTrace) => [],
              );
      newsList.addAll(result);
      moreNewsLoading(false);
    }
  }

  /// get articles
  RxList<ArticleModel> articlesList = RxList([]);

  Future getArticles() async {
    itemListLoading(true);
    final result =
        await homeRepositories.getArticles().onError((error, stackTrace) => []);
    articlesList(result);
    itemListLoading(false);
  }

  /// register email
  RxBool emailSavedSuccess = false.obs;
  RxBool emailIsSaving = false.obs;
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future sendEmail() async {
    emailSavedSuccess(false);
    emailIsSaving(true);
    final result = await homeRepositories.sendEmail(
        {"gmail": emailController.text}).onError((error, stackTrace) => '');
    emailController.text = '';
    phoneNumberController.text = '';
    emailIsSaving(false);
    emailSavedSuccess(true);
    Get.snackbar(
      AppText.successMessage,
      backgroundColor: AppTheme.primaryContainer,
      colorText: AppTheme.onTertiary,
      AppText.successRegisterEmail,
      duration: Duration(seconds: 3), // Optional duration
    );
  }

  @override
  void dispose() {
    super.dispose();
    phoneNumberController.dispose();
    emailController.dispose();
  }

}
