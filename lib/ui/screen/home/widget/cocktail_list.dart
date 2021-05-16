import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'cocktail_item.dart';
import 'package:thecocktaildb/core/bloc/bloc.dart';
import 'package:thecocktaildb/core/model/model.dart';
import 'package:thecocktaildb/ui/widget/widget.dart';

class CocktailList extends StatelessWidget {
  void onRetry(BuildContext context) {
    context.read<CocktailBloc>().add(CocktailEvent.onRetry());
  }

  @override
  Widget build(BuildContext context) {
    final status =
        context.select<CocktailBloc, FetchStatus>((bloc) => bloc.state.status);

    return status.maybeWhen(
      initial: () => SliverToBoxAdapter(
        child: Center(child: TextTitle('Start searching')),
      ),
      loading: () => SliverToBoxAdapter(child: LoadingIndicator()),
      failure: () => SliverToBoxAdapter(
        child: LoadFailure(onRetry: () => onRetry(context)),
      ),
      orElse: () => Builder(
        builder: (context) {
          final items = context.select<CocktailBloc, List<CocktailModel>>(
            (bloc) => bloc.state.paginationItems,
          );

          return SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 6.h,
              crossAxisSpacing: 8.w,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) => CocktailItem(
                data: items[index],
                index: index,
              ),
              childCount: items.length,
            ),
          );
        },
      ),
    );
  }
}
