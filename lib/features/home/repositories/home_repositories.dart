import 'package:dio/dio.dart';
import 'package:hackers_news/app/network/apis_addresses.dart';
import 'package:hackers_news/features/home/models/article_model.dart';
import 'package:hackers_news/features/home/models/category_model.dart';
import 'package:hackers_news/features/home/models/news_model.dart';
import 'package:hackers_news/features/home/models/search_result_model.dart';
import 'package:retrofit/retrofit.dart';

part 'home_repositories.g.dart';

@RestApi(baseUrl: ApisAddresses.baseUrl)
abstract class HomeRepositories {
  factory HomeRepositories(Dio dio, {String baseUrl}) = _HomeRepositories;

  @GET(ApisAddresses.getArticles)
  Future<List<ArticleModel>> getArticles();

  @GET(ApisAddresses.getAllNews)
  Future<List<NewsModel>> getAllNews(@Path() int pageNumber);

  @GET(ApisAddresses.getAllCategories)
  Future<CategoryModel> getAllCategories();

  @GET(ApisAddresses.getCategoryNews)
  Future<List<NewsModel>> getCategoryNews(@Path() String categoryName);

  @GET(ApisAddresses.getTrendsNews)
  Future<List<NewsModel>> getTrendNews();

  @GET(ApisAddresses.searchItems)
  Future<SearchResultModel> searchItems(@Path() String searchKey);

  @POST(ApisAddresses.sendEmail)
  Future sendEmail(@Body() Map<String, String> emailAddress);
}
