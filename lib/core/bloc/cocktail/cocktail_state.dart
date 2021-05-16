part of 'cocktail_bloc.dart';

@freezed
class CocktailState with _$CocktailState {
  const factory CocktailState({
    required FetchStatus status,
    required List<CocktailModel> items,
    required int page,
  }) = _CocktailState;

  factory CocktailState.initial() => CocktailState(
        status: FetchStatusInitial(),
        items: [],
        page: 1,
      );
}

extension CocktailStateX on CocktailState {
  int get limit => 10;
  int get totalPage => (items.length / limit).ceil();
  bool get isReachEnd => page == totalPage;

  List<CocktailModel> get paginationItems {
    if (status is! FetchStatusLoaded) return [];
    if (items.isEmpty) return [];

    final List<CocktailModel> paginationItems = [];

    var take = page * limit;

    if (take > items.length - 1) {
      take = items.length;
    }

    for (var i = 0; i < take; i++) {
      paginationItems.add(items[i]);
    }

    return paginationItems;
  }
}
