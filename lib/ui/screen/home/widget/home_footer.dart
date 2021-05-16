import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:thecocktaildb/core/bloc/bloc.dart';
import 'package:thecocktaildb/ui/widget/widget.dart';

class HomeFooter extends StatelessWidget {
  const HomeFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Builder(builder: (context) {
        final isReachEnd = context.select<CocktailBloc, bool>(
          (bloc) => bloc.state.isReachEnd,
        );
        final isLoaded = context.select<CocktailBloc, bool>(
          (bloc) => bloc.state.status.maybeWhen(
            loaded: () => true,
            orElse: () => false,
          ),
        );

        if (!isReachEnd && isLoaded) return LoadingIndicator();

        return Container();
      }),
    );
  }
}
