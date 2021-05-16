import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:thecocktaildb/core/model/model.dart';
import 'package:thecocktaildb/core/repository/repository.dart';

part 'cocktail_detail_state.dart';
part 'cocktail_detail_cubit.freezed.dart';

@lazySingleton
class CocktailDetailCubit extends Cubit<CocktailDetailState> {
  CocktailDetailCubit(this._cocktailRepository)
      : super(CocktailDetailState.initial());

  final CocktailRepository _cocktailRepository;

  Future<void> fetch(String cocktailId) async {
    try {
      emit(CocktailDetailState.loading());
      final cocktailDetail = await _cocktailRepository.fetchDetail(cocktailId);
      emit(CocktailDetailState.loaded(cocktailDetail));
    } catch (e) {
      emit(CocktailDetailState.failure());
    }
  }
}
