import 'package:flutter_test/flutter_test.dart';
import 'package:thecocktaildb/core/model/model.dart';

import '../../test_helper/json/json.dart';

void main() {
  group('CocktailModel', () {
    test('fromJson', () {
      final subject = CocktailModel.fromJson(jsonCocktail);
      expect(subject.idDrink, jsonCocktail['idDrink']);
      expect(subject.strDrink, jsonCocktail['strDrink']);
      expect(subject.strDrinkThumb, jsonCocktail['strDrinkThumb']);
    });

    test('should support value comparations', () {
      final subject1 = CocktailModel.fromJson(jsonCocktail);
      final subject2 = CocktailModel.fromJson(jsonCocktail);
      final subject3 =
          CocktailModel(idDrink: '1', strDrink: '1', strDrinkThumb: '1');

      expect(subject1, subject2);
      expect(subject1 == subject3, false);
    });
  });
}
