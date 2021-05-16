import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thecocktaildb/core/bloc/bloc.dart';
import 'package:thecocktaildb/core/model/model.dart';
import 'package:thecocktaildb/ui/widget/widget.dart';

class HomeFilterGlass extends StatefulWidget {
  @override
  _HomeFilterGlassState createState() => _HomeFilterGlassState();
}

class _HomeFilterGlassState extends State<HomeFilterGlass> {
  @override
  void initState() {
    super.initState();
    fetch();
  }

  void fetch() {
    final cubit = context.read<CocktailFilterListGlassCubit>();

    cubit.state.status.maybeWhen(
      initial: () => cubit.fetch(),
      failure: () => cubit.fetch(),
      orElse: () {},
    );
  }

  void handleOnChange(GlassModel? value) {
    if (value == null) return;
    context.read<CocktailFilterListGlassCubit>().changeSelected(value);
  }

  @override
  Widget build(BuildContext context) {
    final status = context.select<CocktailFilterListGlassCubit, FetchStatus>(
      (cubit) => cubit.state.status,
    );

    return status.maybeWhen(
      initial: () => LoadingIndicator(),
      loading: () => LoadingIndicator(),
      failure: () => LoadFailure(onRetry: fetch),
      orElse: () => Builder(
        builder: (context) {
          final state = context.watch<CocktailFilterListGlassCubit>().state;

          return InputDropdownField<GlassModel>(
            margin: EdgeInsets.zero,
            currentValue: state.selected,
            options: state.items,
            labelText: 'Filter Glass',
            onChanged: handleOnChange,
            renderItem: (value) =>
                Text(value.strGlass, style: TextStyle(color: Colors.white)),
          );
        },
      ),
    );
  }
}
