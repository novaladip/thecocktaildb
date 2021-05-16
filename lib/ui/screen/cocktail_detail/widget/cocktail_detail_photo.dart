import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CocktailDetailPhoto extends StatelessWidget {
  final String heroTag;
  final String imageSource;

  const CocktailDetailPhoto({
    Key? key,
    required this.heroTag,
    required this.imageSource,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: heroTag,
      child: Image.network(
        imageSource,
        fit: BoxFit.fitWidth,
        width: 1.sw,
      ),
    );
  }
}
