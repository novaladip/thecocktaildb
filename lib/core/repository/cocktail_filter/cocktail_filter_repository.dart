import 'package:injectable/injectable.dart';
import 'package:thecocktaildb/core/data_source/data_source.dart';
import 'package:thecocktaildb/core/model/model.dart';

@injectable
class CocktailFilterRepository {
  const CocktailFilterRepository(this._cocktailFilterRemoteDataSource);

  final CocktailFilterRemoteDataSource _cocktailFilterRemoteDataSource;

  Future<List<CategoryModel>> getCategoryList() async {
    return _cocktailFilterRemoteDataSource.getCategoryList();
  }

  Future<List<GlassModel>> getGlassList() async {
    return _cocktailFilterRemoteDataSource.getGlassList();
  }

  Future<List<AlcoholicModel>> getAlcoholicList() async {
    return _cocktailFilterRemoteDataSource.getAlcoholicList();
  }
}
