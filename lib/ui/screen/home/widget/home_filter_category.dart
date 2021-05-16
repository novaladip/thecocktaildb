import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thecocktaildb/core/bloc/bloc.dart';
import 'package:thecocktaildb/core/model/model.dart';
import 'package:thecocktaildb/ui/widget/widget.dart';

class HomeFilterCategory extends StatefulWidget {
  @override
  _HomeFilterCategoryState createState() => _HomeFilterCategoryState();
}

class _HomeFilterCategoryState extends State<HomeFilterCategory> {
  @override
  void initState() {
    super.initState();
    fetch();
  }

  void fetch() {
    final cubit = context.read<CocktailFilterListCategoryCubit>();
    cubit.state.status.maybeWhen(
      initial: () => cubit.fetch(),
      failure: () => cubit.fetch(),
      orElse: () {},
    );
  }

  void handleOnChange(CategoryModel? value) {
    if (value == null) return;

    context.read<CocktailFilterListCategoryCubit>().changeSelected(value);
  }

  @override
  Widget build(BuildContext context) {
    final status = context.select<CocktailFilterListCategoryCubit, FetchStatus>(
      (cubit) => cubit.state.status,
    );

    return status.maybeWhen(
      initial: () => LoadingIndicator(),
      loading: () => LoadingIndicator(),
      failure: () => LoadFailure(onRetry: fetch),
      orElse: () => Builder(
        builder: (context) {
          final state = context.watch<CocktailFilterListCategoryCubit>().state;

          return InputDropdownField<CategoryModel>(
            margin: EdgeInsets.zero,
            currentValue: state.selected,
            options: state.items,
            labelText: 'Filter Category',
            onChanged: handleOnChange,
            renderItem: (value) =>
                Text(value.strCategory, style: TextStyle(color: Colors.white)),
          );
        },
      ),
    );
  }
}
