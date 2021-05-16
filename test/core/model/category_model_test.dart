import 'package:flutter_test/flutter_test.dart';
import 'package:thecocktaildb/core/model/category_model.dart';

void main() {
  group('AlcoholicModel', () {
    test('should support value comparations', () {
      final subject1 = CategoryModel('1');
      final subject2 = CategoryModel('1');
      expect(subject1, subject2);
    });

    test('fromJson', () {
      final value = 'Category';
      final subject = CategoryModel.fromJson({'strCategory': value});
      expect(subject.strCategory == value, true);
    });
  });
}
