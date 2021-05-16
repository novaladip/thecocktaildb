import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:thecocktaildb/core/bloc/bloc.dart';
import 'package:thecocktaildb/ui/widget/widget.dart';

class CocktailDetailBody extends StatelessWidget {
  const CocktailDetailBody({
    Key? key,
    required this.cocktailId,
  }) : super(key: key);

  final String cocktailId;

  void fetch(BuildContext context) {
    context.read<CocktailDetailCubit>().fetch(cocktailId);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Builder(builder: (context) {
        final state = context.watch<CocktailDetailCubit>().state;

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 13.h),
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 500),
            child: state.when(
              initial: () => LoadingIndicator(),
              loading: () => LoadingIndicator(),
              failure: () => LoadFailure(onRetry: () => fetch(context)),
              loaded: (data) => ListView(
                children: [
                  TextTitle('Instruction'),
                  SpacingVertical(),
                  TextSubtitle(data.strInstructions),
                  SpacingVertical(space: 2),
                  TextTitle('Ingredients'),
                  SpacingVertical(),
                  ...data.ingredients
                      .map((ingredient) => TextSubtitle('- $ingredient'))
                      .toList(),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
