import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_filter_name.dart';
import 'home_filter_glass.dart';
import 'home_filter_category.dart';
import 'home_filter_alcoholic.dart';
import 'package:thecocktaildb/core/bloc/bloc.dart';

class HomeFilterOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<CocktailFilterOptionCubit>().state;

    return Container(
      margin: EdgeInsets.only(top: 15),
      child: AnimatedSwitcher(
        duration: Duration(milliseconds: 500),
        child: state.when(
          byName: () => HomeFilterName(),
          byAlcoholic: () => HomeFilterAlcoholic(),
          byCategory: () => HomeFilterCategory(),
          byGlass: () => HomeFilterGlass(),
        ),
      ),
    );
  }
}
