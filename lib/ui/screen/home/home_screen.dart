import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widget/cocktail_list.dart';
import 'widget/home_header.dart';
import 'widget/home_footer.dart';
import 'package:thecocktaildb/core/bloc/bloc.dart';
import 'package:thecocktaildb/ui/widget/widget.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final ScrollController scrollController;

  @override
  void initState() {
    super.initState();

    context.read<CocktailFilterListAlcoholicCubit>().fetch();
    context.read<CocktailFilterListCategoryCubit>().fetch();
    context.read<CocktailFilterListGlassCubit>().fetch();

    scrollController = ScrollController();
    scrollController.addListener(scrollListener);
  }

  void scrollListener() {
    final triggerFetchMoreSizze =
        0.90 * scrollController.position.maxScrollExtent;

    if (scrollController.position.pixels > triggerFetchMoreSizze) {
      context.read<CocktailBloc>().add(CocktailEvent.onLoadMore());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text('TheCocktailDB'),
            elevation: 0,
          ),
          HomeHeader(),
          SliverToBoxAdapter(child: SpacingVertical(space: 2)),
          CocktailList(),
          SliverToBoxAdapter(child: SpacingVertical(space: 4)),
          HomeFooter()
        ],
      ),
    );
  }
}
