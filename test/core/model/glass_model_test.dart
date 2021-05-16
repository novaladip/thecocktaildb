import 'package:flutter_test/flutter_test.dart';
import 'package:thecocktaildb/core/model/glass_model.dart';

void main() {
  group('AlcoholicModel', () {
    test('should support value comparations', () {
      final subject1 = GlassModel('1');
      final subject2 = GlassModel('1');
      expect(subject1, subject2);
    });

    test('fromJson', () {
      final value = 'Alcoholic';
      final subject = GlassModel.fromJson({'strGlass': value});
      expect(subject.strGlass == value, true);
    });
  });
}
