part of 'cocktail_detail_cubit.dart';

@freezed
class CocktailDetailState with _$CocktailDetailState {
  const factory CocktailDetailState.initial() = _Initial;
  const factory CocktailDetailState.loading() = _Loading;
  const factory CocktailDetailState.loaded(CocktailDetailModel data) = _Loaded;
  const factory CocktailDetailState.failure() = _Failure;
}
