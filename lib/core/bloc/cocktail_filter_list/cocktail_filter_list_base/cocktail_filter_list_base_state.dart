part of 'cocktail_filter_list_base_cubit.dart';

@freezed
class CocktailFilterListBaseState<Item>
    with _$CocktailFilterListBaseState<Item> {
  const factory CocktailFilterListBaseState({
    required FetchStatus status,
    required List<Item> items,
    Item? selected,
  }) = _CocktailFilterListBaseState;

  factory CocktailFilterListBaseState.initial() => CocktailFilterListBaseState(
        status: FetchStatus.initial(),
        items: [],
      );
}
