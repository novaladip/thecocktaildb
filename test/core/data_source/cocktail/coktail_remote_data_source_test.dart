import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:thecocktaildb/core/data_source/data_source.dart';
import 'package:mocktail/mocktail.dart';
import 'package:thecocktaildb/core/model/cocktail_model.dart';

import '../../../test_helper/json/json.dart';
import '../../../test_helper/test_helper.dart';

void main() {
  group('CocktailRemoteDataSource', () {
    late final DioAdapterMock dioAdapterMock;
    late final Dio dio;
    late final CocktailRemoteDataSource cocktailRemoteDataSource;

    setUpAll(() {
      dioAdapterMock = DioAdapterMock();
      dio = Dio(BaseOptions());
      dio.httpClientAdapter = dioAdapterMock;
      cocktailRemoteDataSource = CocktailRemoteDataSource(dio);

      registerFallbackValue<RequestOptions>(FakeRequestOptions());
    });

    test('searchByName', () async {
      final httpResponse = buildResponseBody(payload: jsonCocktailSearch);
      when(() => dioAdapterMock.fetch(any(), any(), any()))
          .thenAnswer((_) async => httpResponse);

      final result = await cocktailRemoteDataSource.searchByName('test');
      final expected = CocktailModel.fromJson(jsonCocktailSearch['drinks']![0]);
      expect(result, [expected]);
    });

    test('filterByAlcoholic', () async {
      final httpResponse = buildResponseBody(payload: jsonFilterByAlcoholic);
      when(() => dioAdapterMock.fetch(any(), any(), any()))
          .thenAnswer((_) async => httpResponse);
      final result = await cocktailRemoteDataSource.filterByAlcoholic('test');
      final expected = [
        CocktailModel.fromJson(jsonFilterByAlcoholic['drinks']![0])
      ];
      expect(result, expected);
    });

    test('filterByCategory', () async {
      final httpResponse = buildResponseBody(payload: jsonFilterByAlcoholic);
      when(() => dioAdapterMock.fetch(any(), any(), any()))
          .thenAnswer((_) async => httpResponse);
      final result = await cocktailRemoteDataSource.filterByCategory('test');
      final expected =
          CocktailModel.fromJson(jsonFilterByAlcoholic['drinks']![0]);
      expect(result, [expected]);
    });

    test('filterByGlass', () async {
      final httpResponse = buildResponseBody(payload: jsonFilterByAlcoholic);
      when(() => dioAdapterMock.fetch(any(), any(), any()))
          .thenAnswer((_) async => httpResponse);
      final result = await cocktailRemoteDataSource.filterByGlass('Alcoholic');
      final expected =
          CocktailModel.fromJson(jsonFilterByAlcoholic['drinks']![0]);

      expect(result, [expected]);
    });

    test('fetchDetail', () async {
      final httpResponse = buildResponseBody(payload: {
        'drinks': [jsonCocktailDetail]
      });
      when(() => dioAdapterMock.fetch(any(), any(), any()))
          .thenAnswer((_) async => httpResponse);
      final result = await cocktailRemoteDataSource.fetchDetail('id');
      final expected = CocktailDetailModel.fromJson(jsonCocktailDetail);

      expect(result, expected);
    });
  });
}
