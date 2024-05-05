
import 'package:dio/dio.dart';
import 'package:hackers_news/app/network/apis_addresses.dart';
import 'package:hackers_news/features/home/models/article_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../news_details/models/news_details_model.dart';
import '../models/article_details_model.dart';

part 'news_details_repositories.g.dart';

@RestApi(baseUrl: ApisAddresses.baseUrl)
abstract class NewsDetailsRepositories{

  factory NewsDetailsRepositories(Dio dio, {String baseUrl}) = _NewsDetailsRepositories;

  @GET(ApisAddresses.getNewsDetails)
  Future<NewsDetailsModel> getNewsDetails(@Path() String newsId);

  @GET(ApisAddresses.getArticlesContent)
  Future<ArticleDetailsModel> getArticleContent(@Path() String articleId);

  @GET(ApisAddresses.getRelatedArticle)
  Future<List<ArticleModel>> getRelatedArticle(@Path() String categoryName);

}