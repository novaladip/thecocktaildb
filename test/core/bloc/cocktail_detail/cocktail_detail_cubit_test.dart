import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:thecocktaildb/core/bloc/bloc.dart';
import 'package:thecocktaildb/core/model/cocktail_model.dart';
import 'package:thecocktaildb/core/repository/repository.dart';

import '../../../test_helper/json/json.dart';

class MockCocktailRepository extends Mock implements CocktailRepository {}

void main() {
  group('CocktailDetailCubit', () {
    group('fetch success', () {
      final cocktailDetail = CocktailDetailModel.fromJson(jsonCocktailDetail);

      blocTest<CocktailDetailCubit, CocktailDetailState>(
        'when success',
        build: () {
          final cocktailRepository = MockCocktailRepository();
          when(() => cocktailRepository.fetchDetail('id'))
              .thenAnswer((_) async => cocktailDetail);
          return CocktailDetailCubit(cocktailRepository);
        },
        act: (cubit) => cubit.fetch('id'),
        expect: () => [
          CocktailDetailState.loading(),
          CocktailDetailState.loaded(cocktailDetail),
        ],
      );

      blocTest<CocktailDetailCubit, CocktailDetailState>(
        'when failure',
        build: () {
          final cocktailRepository = MockCocktailRepository();

          when(() => cocktailRepository.fetchDetail('failure'))
              .thenAnswer((_) async => throw Exception('Something went wrong'));
          return CocktailDetailCubit(cocktailRepository);
        },
        act: (cubit) => cubit.fetch('failure'),
        expect: () => [
          CocktailDetailState.loading(),
          CocktailDetailState.failure(),
        ],
      );
    });
  });
}
