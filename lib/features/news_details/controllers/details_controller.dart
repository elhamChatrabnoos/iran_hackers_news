import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackers_news/app/config/app_helper.dart';
import 'package:hackers_news/app/routers/route_names.dart';
import 'package:hackers_news/features/home/models/article_model.dart';
import 'package:hackers_news/features/news_details/models/news_details_model.dart';
import 'package:hackers_news/features/news_details/repositories/news_details_repositories.dart';
import 'package:hackers_news/features/news_details/views/pages/news_details_page.dart';

import '../models/article_details_model.dart';

class DetailsController extends GetxController {
  Rx<NewsDetailsModel> newsDetails = Rx(NewsDetailsModel());
  NewsDetailsRepositories newsDetailsRepositories =
      NewsDetailsRepositories(AppHelper.dioConfig.dio);
  RxBool newsDetailsLoaded = false.obs;

  Future getNewsDetails(String newsId) async {
    newsDetailsLoaded(false);
    final result = await newsDetailsRepositories
        .getNewsDetails(newsId)
        .onError((error, stackTrace) => NewsDetailsModel());
    newsDetails(result);
    getRelatedArticle(result.type ?? '');
  }

  /// get article details
  Rx<ArticleDetailsModel> articleDetails = Rx(ArticleDetailsModel());
  RxBool articleDetailsLoading = false.obs;

  Future getArticleContent(String articleId) async {
    articleDetailsLoading(true);
    final result = await newsDetailsRepositories
        .getArticleContent(articleId)
        .onError((error, stackTrace) => ArticleDetailsModel());
    articleDetails(result);
    getRelatedArticle(result.type ?? '');
  }

  /// get related articles
  RxList<ArticleModel> relatedArticleList = RxList([]);
  RxBool relatedArticleLoading = false.obs;

  Future getRelatedArticle(String categoryName) async {
    relatedArticleLoading(true);
    final result = await newsDetailsRepositories
        .getRelatedArticle(categoryName)
        .onError((error, stackTrace) => []);
    relatedArticleList(result);
    articleDetailsLoading(false);
    newsDetailsLoaded(true);
  }

}
