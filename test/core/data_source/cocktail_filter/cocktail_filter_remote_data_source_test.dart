import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:thecocktaildb/core/data_source/data_source.dart';
import 'package:thecocktaildb/core/model/category_model.dart';
import 'package:thecocktaildb/core/model/model.dart';

import '../../../test_helper/json/json.dart';
import '../../../test_helper/test_helper.dart';

void main() {
  group('CocktailRemoteDataSource', () {
    late final DioAdapterMock dioAdapterMock;
    late final Dio dio;
    late final CocktailFilterRemoteDataSource cocktailFilterRemoteDataSource;

    setUpAll(() {
      dioAdapterMock = DioAdapterMock();
      dio = Dio(BaseOptions());
      dio.httpClientAdapter = dioAdapterMock;
      cocktailFilterRemoteDataSource = CocktailFilterRemoteDataSource(dio);

      registerFallbackValue<RequestOptions>(FakeRequestOptions());
    });

    test('getCategoryList', () async {
      final responseBody = buildResponseBody(payload: jsonFilterCategoryList);
      when(() => dioAdapterMock.fetch(any(), any(), any()))
          .thenAnswer((_) async => responseBody);

      final result = await cocktailFilterRemoteDataSource.getCategoryList();
      final expected =
          CategoryModel.fromJson(jsonFilterCategoryList['drinks']![0]);
      expect(result, [expected]);
    });

    test('getGlassList', () async {
      final responseBody = buildResponseBody(payload: jsonFilterGlassList);
      when(() => dioAdapterMock.fetch(any(), any(), any()))
          .thenAnswer((_) async => responseBody);

      final result = await cocktailFilterRemoteDataSource.getGlassList();
      final expected = GlassModel.fromJson(jsonFilterGlassList['drinks']![0]);
      expect(result, [expected]);
    });

    test('getAlcoholicList', () async {
      final responseBody = buildResponseBody(payload: jsonFilterAlcoholicList);
      when(() => dioAdapterMock.fetch(any(), any(), any()))
          .thenAnswer((_) async => responseBody);

      final result = await cocktailFilterRemoteDataSource.getAlcoholicList();
      final expected =
          AlcoholicModel.fromJson(jsonFilterAlcoholicList['drinks']![0]);
      expect(result, [expected]);
    });
  });
}
