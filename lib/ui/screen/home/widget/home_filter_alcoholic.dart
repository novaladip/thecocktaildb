import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thecocktaildb/core/bloc/bloc.dart';
import 'package:thecocktaildb/core/model/model.dart';
import 'package:thecocktaildb/ui/widget/widget.dart';

class HomeFilterAlcoholic extends StatefulWidget {
  @override
  _HomeFilterAlcoholicState createState() => _HomeFilterAlcoholicState();
}

class _HomeFilterAlcoholicState extends State<HomeFilterAlcoholic> {
  @override
  void initState() {
    super.initState();
    fetch();
  }

  void fetch() {
    final cubit = context.read<CocktailFilterListAlcoholicCubit>();
    cubit.state.status.maybeWhen(
      initial: () => cubit.fetch(),
      failure: () => cubit.fetch(),
      orElse: () {},
    );
  }

  void handleOnChange(AlcoholicModel? value) {
    if (value == null) return;
    context.read<CocktailFilterListAlcoholicCubit>().changeSelected(value);
  }

  @override
  Widget build(BuildContext context) {
    final status =
        context.select<CocktailFilterListAlcoholicCubit, FetchStatus>(
      (cubit) => cubit.state.status,
    );

    return status.maybeWhen(
      initial: () => LoadingIndicator(),
      loading: () => LoadingIndicator(),
      failure: () => LoadFailure(onRetry: fetch),
      orElse: () => Builder(
        builder: (context) {
          final state = context.watch<CocktailFilterListAlcoholicCubit>().state;

          return InputDropdownField<AlcoholicModel>(
            margin: EdgeInsets.zero,
            currentValue: state.selected,
            options: state.items,
            labelText: 'Filter Alcoholic',
            onChanged: handleOnChange,
            renderItem: (value) =>
                Text(value.strAlcoholic, style: TextStyle(color: Colors.white)),
          );
        },
      ),
    );
  }
}
