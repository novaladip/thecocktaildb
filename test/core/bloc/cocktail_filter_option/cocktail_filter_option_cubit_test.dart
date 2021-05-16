import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:thecocktaildb/core/bloc/cocktail_filter_option/cocktail_filter_option_cubit.dart';

void main() {
  group('CocktailFilterOptionCubit', () {
    late final CocktailFilterOptionCubit subject;

    setUpAll(() {
      subject = CocktailFilterOptionCubit();
    });

    tearDownAll(() {
      subject.close();
    });

    blocTest<CocktailFilterOptionCubit, CocktailFilterOptionState>(
      'changeOption',
      build: () => subject,
      act: (cubit) =>
          cubit.changeOption(CocktailFilterOptionState.byAlcoholic()),
      expect: () => [
        CocktailFilterOptionState.byAlcoholic(),
      ],
    );
  });
}
