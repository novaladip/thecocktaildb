import 'package:equatable/equatable.dart';

class CocktailModel extends Equatable {
  CocktailModel({
    required this.idDrink,
    required this.strDrink,
    required this.strDrinkThumb,
  });

  final String idDrink;
  final String strDrink;
  final String strDrinkThumb;

  factory CocktailModel.fromJson(Map<String, dynamic> json) {
    return CocktailModel(
      idDrink: json['idDrink'] as String,
      strDrink: json['strDrink'] as String,
      strDrinkThumb: json['strDrinkThumb'] as String,
    );
  }

  @override
  List<Object?> get props => [idDrink, strDrink, strDrinkThumb];
}

class CocktailDetailModel extends Equatable {
  CocktailDetailModel({
    required this.idDrink,
    required this.strDrink,
    required this.strDrinkThumb,
    this.strTags,
    this.strVideo,
    required this.strCategory,
    this.strIBA,
    required this.strAlcoholic,
    required this.strGlass,
    required this.strInstructions,
    this.strIngredient1,
    this.strIngredient2,
    this.strIngredient3,
    this.strIngredient4,
    this.strIngredient5,
    this.strIngredient6,
    this.strIngredient7,
    this.strIngredient8,
    this.strIngredient9,
    this.strIngredient10,
    this.strIngredient11,
    this.strIngredient12,
    this.strIngredient13,
    this.strIngredient14,
    this.strIngredient15,
    this.strMeasure1,
    this.strMeasure2,
    this.strMeasure3,
    this.strMeasure4,
    this.strMeasure5,
    this.strMeasure6,
    this.strMeasure7,
  });

  final String idDrink;
  final String strDrink;
  final String strDrinkThumb;
  final String? strTags;
  final String? strVideo;
  final String strCategory;
  final String? strIBA;
  final String strAlcoholic;
  final String strGlass;
  final String strInstructions;

  final String? strIngredient1;
  final String? strIngredient2;
  final String? strIngredient3;
  final String? strIngredient4;
  final String? strIngredient5;
  final String? strIngredient6;
  final String? strIngredient7;
  final String? strIngredient8;
  final String? strIngredient9;
  final String? strIngredient10;
  final String? strIngredient11;
  final String? strIngredient12;
  final String? strIngredient13;
  final String? strIngredient14;
  final String? strIngredient15;
  final String? strMeasure1;
  final String? strMeasure2;
  final String? strMeasure3;
  final String? strMeasure4;
  final String? strMeasure5;
  final String? strMeasure6;
  final String? strMeasure7;

  factory CocktailDetailModel.fromJson(Map<String, dynamic> json) {
    return CocktailDetailModel(
      idDrink: json['idDrink'] as String,
      strDrink: json['strDrink'] as String,
      strDrinkThumb: json['strDrinkThumb'] as String,
      strTags: json['strTags'] ?? null,
      strVideo: json['strVideo'] ?? null,
      strCategory: json['strCategory'] as String,
      strIBA: json['strIBA'] ?? null,
      strAlcoholic: json['strAlcoholic'] as String,
      strGlass: json['strGlass'] as String,
      strInstructions: json['strInstructions'] as String,
      strIngredient1: json['strIngredient1'] ?? null,
      strIngredient2: json['strIngredient2'] ?? null,
      strIngredient3: json['strIngredient3'] ?? null,
      strIngredient4: json['strIngredient4'] ?? null,
      strIngredient5: json['strIngredient5'] ?? null,
      strIngredient6: json['strIngredient6'] ?? null,
      strIngredient7: json['strIngredient7'] ?? null,
      strIngredient8: json['strIngredient8'] ?? null,
      strIngredient9: json['strIngredient9'] ?? null,
      strIngredient10: json['strIngredient10'] ?? null,
      strIngredient11: json['strIngredient11'] ?? null,
      strIngredient12: json['strIngredient12'] ?? null,
      strIngredient13: json['strIngredient13'] ?? null,
      strIngredient14: json['strIngredient14'] ?? null,
      strIngredient15: json['strIngredient15'] ?? null,
      strMeasure1: json['strMeasure1'] ?? null,
      strMeasure2: json['strMeasure2'] ?? null,
      strMeasure3: json['strMeasure3'] ?? null,
      strMeasure4: json['strMeasure4'] ?? null,
      strMeasure5: json['strMeasure5'] ?? null,
      strMeasure6: json['strMeasure6'] ?? null,
      strMeasure7: json['strMeasure7'] ?? null,
    );
  }

  List<String> get ingredients {
    final ing = <String>[];

    if (strIngredient1 != null) {
      ing.add(strIngredient1!);
    }

    if (strIngredient2 != null) {
      ing.add(strIngredient2!);
    }

    if (strIngredient3 != null) {
      ing.add(strIngredient3!);
    }

    if (strIngredient4 != null) {
      ing.add(strIngredient4!);
    }

    if (strIngredient5 != null) {
      ing.add(strIngredient5!);
    }

    if (strIngredient6 != null) {
      ing.add(strIngredient6!);
    }

    if (strIngredient7 != null) {
      ing.add(strIngredient7!);
    }

    if (strIngredient8 != null) {
      ing.add(strIngredient8!);
    }

    if (strIngredient9 != null) {
      ing.add(strIngredient9!);
    }

    if (strIngredient10 != null) {
      ing.add(strIngredient10!);
    }

    if (strIngredient11 != null) {
      ing.add(strIngredient11!);
    }

    if (strIngredient12 != null) {
      ing.add(strIngredient12!);
    }

    if (strIngredient13 != null) {
      ing.add(strIngredient13!);
    }

    if (strIngredient14 != null) {
      ing.add(strIngredient14!);
    }

    if (strIngredient15 != null) {
      ing.add(strIngredient15!);
    }

    return ing;
  }

  @override
  List<Object?> get props => [
        idDrink,
        strDrink,
        strDrinkThumb,
        strTags,
        strVideo,
        strCategory,
        strIBA,
        strAlcoholic,
        strGlass,
        strInstructions,
        strIngredient1,
        strIngredient2,
        strIngredient3,
        strIngredient4,
        strIngredient5,
        strIngredient6,
        strIngredient7,
        strIngredient8,
        strIngredient9,
        strIngredient10,
        strIngredient11,
        strIngredient12,
        strIngredient13,
        strIngredient14,
        strIngredient15,
        strMeasure1,
        strMeasure2,
        strMeasure3,
        strMeasure4,
        strMeasure5,
        strMeasure6,
        strMeasure7,
      ];
}
