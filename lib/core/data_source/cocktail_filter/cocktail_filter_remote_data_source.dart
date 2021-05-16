import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:thecocktaildb/core/model/model.dart';

@injectable
class CocktailFilterRemoteDataSource {
  const CocktailFilterRemoteDataSource(this._dio);

  final Dio _dio;

  Future<List<T>> _fetch<T>({
    required String path,
    required T Function(Map<String, dynamic> json) fromJson,
  }) async {
    final res = await _dio.get(path);
    final data = List<dynamic>.from(res.data['drinks']);
    final items = data.map((json) => fromJson(json)).toList();
    return items;
  }

  Future<List<CategoryModel>> getCategoryList() async {
    return _fetch<CategoryModel>(
      path: '/list.php?c=list',
      fromJson: ((json) => CategoryModel.fromJson(json)),
    );
  }

  Future<List<GlassModel>> getGlassList() async {
    return _fetch<GlassModel>(
      path: '/list.php?g=list',
      fromJson: ((json) => GlassModel.fromJson(json)),
    );
  }

  Future<List<AlcoholicModel>> getAlcoholicList() async {
    return _fetch<AlcoholicModel>(
      path: '/list.php?a=list',
      fromJson: ((json) => AlcoholicModel.fromJson(json)),
    );
  }
}
