import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thecocktaildb/core/bloc/bloc.dart';
import 'package:thecocktaildb/ui/widget/spacing/spacing.dart';

class Option {
  final String title;
  final CocktailFilterOptionState state;

  Option(
    this.title,
    this.state,
  );
}

final options = [
  Option('Name', CocktailFilterOptionState.byName()),
  Option('Alcoholic', CocktailFilterOptionState.byAlcoholic()),
  Option('Category', CocktailFilterOptionState.byCategory()),
  Option('Glass', CocktailFilterOptionState.byGlass()),
];

class HomeFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<CocktailFilterOptionCubit>().state;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Filter by',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SpacingVertical(),
        Row(
          children: options
              .map((option) => FilterOption(
                    text: option.title,
                    isSelected: state == option.state,
                    state: option.state,
                  ))
              .toList(),
        ),
      ],
    );
  }
}

class FilterOption extends StatelessWidget {
  const FilterOption({
    Key? key,
    required this.text,
    required this.isSelected,
    required this.state,
  }) : super(key: key);

  final String text;
  final bool isSelected;
  final CocktailFilterOptionState state;

  Color get bgColor => isSelected ? Colors.white : Colors.white70;
  Color get textColor => isSelected ? Colors.black : Colors.black87;

  void handleOnTap(BuildContext context) {
    context.read<CocktailFilterOptionCubit>().changeOption(state);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => handleOnTap(context),
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(5),
        ),
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.only(right: 10),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
