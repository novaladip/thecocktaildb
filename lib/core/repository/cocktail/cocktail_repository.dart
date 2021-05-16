import 'package:injectable/injectable.dart';
import 'package:thecocktaildb/core/data_source/data_source.dart';
import 'package:thecocktaildb/core/model/model.dart';

@injectable
class CocktailRepository {
  const CocktailRepository(
    this._cocktailRemoteDataSource,
  );

  final CocktailRemoteDataSource _cocktailRemoteDataSource;

  Future<List<CocktailModel>> searchByName(String name) {
    return _cocktailRemoteDataSource.searchByName(name);
  }

  Future<List<CocktailModel>> filterByAlcoholic(String alcoholic) async {
    return _cocktailRemoteDataSource.filterByAlcoholic(alcoholic);
  }

  Future<List<CocktailModel>> filterByCategory(String category) async {
    return _cocktailRemoteDataSource.filterByCategory(category);
  }

  Future<List<CocktailModel>> filterByGlass(String glass) async {
    return _cocktailRemoteDataSource.filterByGlass(glass);
  }

  Future<CocktailDetailModel> fetchDetail(String cocktailId) async {
    return _cocktailRemoteDataSource.fetchDetail(cocktailId);
  }
}
