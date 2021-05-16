import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:thecocktaildb/core/data_source/data_source.dart';
import 'package:thecocktaildb/core/model/model.dart';
import 'package:thecocktaildb/core/repository/cocktail_filter/cocktail_filter_repository.dart';

import '../../../test_helper/json/json.dart';

class MockCocktailFilterDataSource extends Mock
    implements CocktailFilterRemoteDataSource {}

void main() {
  group('CocktailFilterRepository', () {
    late final CocktailFilterRepository cocktailFilterRepository;
    late final CocktailFilterRemoteDataSource cocktailFilterRemoteDataSource;

    setUpAll(() {
      cocktailFilterRemoteDataSource = MockCocktailFilterDataSource();
      cocktailFilterRepository =
          CocktailFilterRepository(cocktailFilterRemoteDataSource);
    });

    test('getCategoryList', () async {
      final expected = [
        CategoryModel.fromJson(jsonFilterCategoryList['drinks']![0])
      ];
      when(() => cocktailFilterRemoteDataSource.getCategoryList())
          .thenAnswer((_) async => expected);

      final result = await cocktailFilterRepository.getCategoryList();

      expect(result, expected);
    });

    test('getGlassList', () async {
      final expected = [GlassModel.fromJson(jsonFilterGlassList['drinks']![0])];
      when(() => cocktailFilterRemoteDataSource.getGlassList())
          .thenAnswer((_) async => expected);

      final result = await cocktailFilterRepository.getGlassList();

      expect(result, expected);
    });

    test('getAlcoholicList', () async {
      final expected = [
        AlcoholicModel.fromJson(jsonFilterAlcoholicList['drinks']![0])
      ];
      when(() => cocktailFilterRemoteDataSource.getAlcoholicList())
          .thenAnswer((_) async => expected);

      final result = await cocktailFilterRepository.getAlcoholicList();

      expect(result, expected);
    });
  });
}
