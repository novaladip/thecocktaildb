import 'package:injectable/injectable.dart';
import 'package:thecocktaildb/core/model/model.dart';
import 'package:thecocktaildb/core/repository/repository.dart';

import '../cocktail_filter_list_base/cocktail_filter_list_base_cubit.dart';

@lazySingleton
class CocktailFilterListCategoryCubit
    extends CocktailFilterListBaseCubit<CategoryModel> {
  CocktailFilterListCategoryCubit(
      CocktailFilterRepository cocktailFilterRepository)
      : super(cocktailFilterRepository.getCategoryList);
}
