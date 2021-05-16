import 'package:flutter_test/flutter_test.dart';
import 'package:thecocktaildb/core/model/alcoholic_model.dart';

void main() {
  group('AlcoholicModel', () {
    test('should support value comparations', () {
      final subject1 = AlcoholicModel('1');
      final subject2 = AlcoholicModel('1');
      expect(subject1, subject2);
    });

    test('fromJson', () {
      final value = 'Alcoholic';
      final subject = AlcoholicModel.fromJson({'strAlcoholic': value});
      expect(subject.strAlcoholic == value, true);
    });
  });
}
