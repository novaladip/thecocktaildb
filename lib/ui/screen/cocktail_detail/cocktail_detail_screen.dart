import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widget/cocktail_detail_body.dart';
import 'widget/cocktail_detail_photo.dart';
import 'package:thecocktaildb/core/bloc/bloc.dart';
import 'package:thecocktaildb/core/model/model.dart';

class CocktailDetailScreen extends StatefulWidget {
  static const routeName = '/cocktail/detail';

  final CocktailModel cocktail;

  const CocktailDetailScreen({
    Key? key,
    required this.cocktail,
  }) : super(key: key);

  @override
  _CocktailDetailScreenState createState() => _CocktailDetailScreenState();
}

class _CocktailDetailScreenState extends State<CocktailDetailScreen> {
  @override
  void initState() {
    super.initState();
    fetch();
  }

  void fetch() {
    context.read<CocktailDetailCubit>().fetch(widget.cocktail.idDrink);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.cocktail.strDrink),
      ),
      body: Column(
        children: [
          CocktailDetailPhoto(
            heroTag: widget.cocktail.idDrink + widget.cocktail.strDrinkThumb,
            imageSource: widget.cocktail.strDrinkThumb,
          ),
          CocktailDetailBody(cocktailId: widget.cocktail.idDrink),
        ],
      ),
    );
  }
}
