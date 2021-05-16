part of 'cocktail_filter_option_cubit.dart';

@freezed
class CocktailFilterOptionState with _$CocktailFilterOptionState {
  const factory CocktailFilterOptionState.byName() =
      CocktailFilterOptionStateByName;
  const factory CocktailFilterOptionState.byCategory() =
      CocktailFilterOptionStateByCategory;
  const factory CocktailFilterOptionState.byAlcoholic() =
      CocktailFilterOptionStateByAlcoholic;
  const factory CocktailFilterOptionState.byGlass() =
      CocktailFilterOptionStateByGlass;
}
