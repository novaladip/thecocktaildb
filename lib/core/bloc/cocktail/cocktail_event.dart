part of 'cocktail_bloc.dart';

@freezed
class CocktailEvent with _$CocktailEvent {
  const factory CocktailEvent.searchByName(String name) = _SearchByName;
  const factory CocktailEvent.filterByAlcoholic() = _FilterByAlcoholic;
  const factory CocktailEvent.filterByCategory() = _FilterByCategory;
  const factory CocktailEvent.filterByGlass() = _FilterByGlass;
  const factory CocktailEvent.onLoadMore() = _OnLoadMore;
  const factory CocktailEvent.onClear() = _OnClear;
  const factory CocktailEvent.onRetry() = _OnRetry;
}
