import 'package:dio/dio.dart';
import 'package:news_app/models/artical_model.dart';

class NewsService {
  final dio = Dio();

  Future<List<ArticalModel>> getTopHeadlines({required String category}) async {
    try {
      final Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=add_your_key',
      );
      final Map<String, dynamic> jsonData = response.data;
      List<dynamic> articals = jsonData['articles'];
      List<ArticalModel>? articalModelsList = [];

      for (var artical in articals) {
        ArticalModel articalModel = ArticalModel.fromJson(artical);
        articalModelsList.add(articalModel);
      }
      return articalModelsList;
    } catch (e) {
      return [];
    }
  }
}
