class ApisAddresses{
  static const String baseUrl = 'https://iran-hackersnews.info/api/';
  static const String getArticles = '${baseUrl}getarticles';
  static const String getArticlesContent = '${baseUrl}getcontent/articles/{articleId}';
  static const String getRelatedArticle = '${baseUrl}getarticles/{categoryName}';
  static const String getAllNews = '${baseUrl}getnews?page={pageNumber}';
  static const String getTrendsNews = '${baseUrl}getnews/trends';
  static const String getAllCategories = '${baseUrl}getcategories';
  static const String getCategoryNews = '${baseUrl}getnews/{categoryName}';
  static const String getNewsDetails = '${baseUrl}getcontent/{newsId}';
  static const String sendEmail = '${baseUrl}news_letter/addgmail';
  static const String searchItems = '${baseUrl}search?searchTitle={searchKey}';
}