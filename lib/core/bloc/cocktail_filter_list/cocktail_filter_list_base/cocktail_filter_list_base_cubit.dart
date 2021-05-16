import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thecocktaildb/core/model/model.dart';

part 'cocktail_filter_list_base_state.dart';
part 'cocktail_filter_list_base_cubit.freezed.dart';

class CocktailFilterListBaseCubit<Item>
    extends Cubit<CocktailFilterListBaseState<Item>> {
  CocktailFilterListBaseCubit(
    this._fetch,
  ) : super(CocktailFilterListBaseState.initial());

  final Future<List<Item>> Function() _fetch;

  Future<void> fetch() async {
    try {
      emit(state.copyWith(status: FetchStatus.loading()));

      final items = await _fetch();
      final newState = state.copyWith(
        status: FetchStatus.loaded(),
        items: items,
        selected: items[0],
      );

      emit(newState);
    } catch (e) {
      print(e);
      emit(state.copyWith(status: FetchStatus.failure()));
    }
  }

  void changeSelected(Item item) {
    emit(state.copyWith(selected: item));
  }
}
