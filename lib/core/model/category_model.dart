import 'package:equatable/equatable.dart';

class CategoryModel extends Equatable {
  final String strCategory;

  const CategoryModel(
    this.strCategory,
  );

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(json['strCategory']);
  }

  @override
  List<Object?> get props => [strCategory];
}
