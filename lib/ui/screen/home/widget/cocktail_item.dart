import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:thecocktaildb/styles.dart';
import 'package:thecocktaildb/core/model/model.dart';
import 'package:thecocktaildb/ui/widget/widget.dart';

import '../../screen.dart';

class CocktailItem extends StatelessWidget {
  final CocktailModel data;
  final int index;

  const CocktailItem({
    Key? key,
    required this.data,
    required this.index,
  }) : super(key: key);

  EdgeInsets get padding =>
      index % 2 == 0 ? EdgeInsets.only(left: 5.w) : EdgeInsets.only(right: 5.w);

  void handleOnTap(BuildContext context) {
    Navigator.of(context)
        .pushNamed(CocktailDetailScreen.routeName, arguments: data);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (builder, constraints) {
      return Container(
        padding: padding,
        child: InkWell(
          onTap: () => handleOnTap(context),
          child: Stack(
            children: [
              ClipRRect(
                child: Hero(
                  tag: data.idDrink + data.strDrinkThumb,
                  child: Image.network(
                    data.strDrinkThumb,
                    height: constraints.maxHeight,
                    fit: BoxFit.fill,
                  ),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              SizedBox(height: 3.h),
              Positioned(
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.all(5.sp),
                  width: 140.w,
                  decoration: BoxDecoration(
                    color: Styles.primaryColor.withOpacity(0.9),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8.sp),
                      topRight: Radius.circular(8.sp),
                    ),
                  ),
                  child: TextSubtitle(
                    data.strDrink,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
