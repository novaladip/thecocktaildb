import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:thecocktaildb/core/data_source/data_source.dart';
import 'package:thecocktaildb/core/model/cocktail_model.dart';
import 'package:thecocktaildb/core/repository/repository.dart';

import '../../../test_helper/json/json.dart';

class MockCocktailRemoteDataSource extends Mock
    implements CocktailRemoteDataSource {}

void main() {
  group('CocktailRepository', () {
    late final CocktailRepository cocktailRepository;
    late final CocktailRemoteDataSource cocktailRemoteDataSource;

    setUpAll(() {
      cocktailRemoteDataSource = MockCocktailRemoteDataSource();
      cocktailRepository = CocktailRepository(cocktailRemoteDataSource);
    });

    test('searchByName', () async {
      final expected = [CocktailModel.fromJson(jsonCocktail)];
      when(() => cocktailRemoteDataSource.searchByName('test')).thenAnswer(
        (_) async => expected,
      );

      final result = await cocktailRepository.searchByName('test');

      expect(result, expected);
    });

    test('filterByAlcoholic', () async {
      final expected = [
        CocktailModel.fromJson(jsonFilterByAlcoholic['drinks']![0])
      ];
      when(() => cocktailRemoteDataSource.filterByAlcoholic('test')).thenAnswer(
        (_) async => expected,
      );

      final result = await cocktailRepository.filterByAlcoholic('test');

      expect(result, expected);
    });

    test('filterByCategory', () async {
      final expected = [
        CocktailModel.fromJson(jsonFilterByAlcoholic['drinks']![0])
      ];
      when(() => cocktailRemoteDataSource.filterByCategory('test')).thenAnswer(
        (_) async => expected,
      );

      final result = await cocktailRepository.filterByCategory('test');

      expect(result, expected);
    });

    test('filterByGlass', () async {
      final expected = [
        CocktailModel.fromJson(jsonFilterByAlcoholic['drinks']![0])
      ];
      when(() => cocktailRemoteDataSource.filterByGlass('test')).thenAnswer(
        (_) async => expected,
      );

      final result = await cocktailRepository.filterByGlass('test');

      expect(result, expected);
    });

    test('fetchDetail', () async {
      final expected = CocktailDetailModel.fromJson(jsonCocktailDetail);
      when(() => cocktailRemoteDataSource.fetchDetail('test')).thenAnswer(
        (_) async => expected,
      );

      final result = await cocktailRepository.fetchDetail('test');

      expect(result, expected);
    });
  });
}
