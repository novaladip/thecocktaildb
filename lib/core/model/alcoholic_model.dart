import 'package:equatable/equatable.dart';

class AlcoholicModel extends Equatable {
  final String strAlcoholic;

  const AlcoholicModel(this.strAlcoholic);

  factory AlcoholicModel.fromJson(Map<String, dynamic> json) {
    return AlcoholicModel(json['strAlcoholic']);
  }

  @override
  List<Object?> get props => [strAlcoholic];
}
