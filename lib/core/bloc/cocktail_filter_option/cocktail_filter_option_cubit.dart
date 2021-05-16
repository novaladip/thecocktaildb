import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cocktail_filter_option_state.dart';
part 'cocktail_filter_option_cubit.freezed.dart';

@lazySingleton
class CocktailFilterOptionCubit extends Cubit<CocktailFilterOptionState> {
  CocktailFilterOptionCubit() : super(CocktailFilterOptionState.byName());

  void changeOption(CocktailFilterOptionState state) {
    emit(state);
  }
}
