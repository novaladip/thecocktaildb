import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:thecocktaildb/core/model/model.dart';

@injectable
class CocktailRemoteDataSource {
  const CocktailRemoteDataSource(
    this._dio,
  );

  final Dio _dio;

  Future<List<CocktailModel>> searchByName(String name) async {
    return _fetchList('/search.php?s=$name');
  }

  Future<List<CocktailModel>> filterByAlcoholic(String alcoholic) async {
    return _fetchList('/filter.php?a=$alcoholic');
  }

  Future<List<CocktailModel>> filterByCategory(String category) async {
    return _fetchList('/filter.php?c=$category');
  }

  Future<List<CocktailModel>> filterByGlass(String glass) async {
    return _fetchList('/filter.php?g=$glass');
  }

  Future<CocktailDetailModel> fetchDetail(String cocktailId) async {
    final res = await _dio.get('/lookup.php?i=$cocktailId');
    return CocktailDetailModel.fromJson(res.data['drinks'][0]);
  }

  Future<List<CocktailModel>> _fetchList(String path) async {
    final res = await _dio.get(path);
    final data = List<dynamic>.from(res.data['drinks']);
    final cocktails = data.map((json) => CocktailModel.fromJson(json)).toList();
    return cocktails;
  }
}
