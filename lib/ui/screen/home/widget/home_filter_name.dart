import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thecocktaildb/core/bloc/bloc.dart';
import 'package:thecocktaildb/ui/widget/widget.dart';

class HomeFilterName extends StatelessWidget {
  HomeFilterName({Key? key}) : super(key: key);

  void handleOnSubmit(String value, BuildContext context) {
    if (value.replaceAll(' ', '').isEmpty) return;

    final event = CocktailEvent.searchByName(value);
    context.read<CocktailBloc>().add(event);
  }

  @override
  Widget build(BuildContext context) {
    return InputField(
      margin: EdgeInsets.zero,
      labelText: 'Search by name',
      textInputAction: TextInputAction.search,
      onFieldSubmitted: (value) => handleOnSubmit(value, context),
    );
  }
}
