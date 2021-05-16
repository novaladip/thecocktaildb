import 'package:equatable/equatable.dart';

class GlassModel extends Equatable {
  final String strGlass;

  const GlassModel(this.strGlass);

  factory GlassModel.fromJson(Map<String, dynamic> json) {
    return GlassModel(json['strGlass']);
  }

  @override
  List<Object?> get props => [strGlass];
}
