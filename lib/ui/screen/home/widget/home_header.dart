import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:thecocktaildb/styles.dart';
import 'package:thecocktaildb/ui/screen/home/widget/home_filter.dart';
import 'package:thecocktaildb/ui/screen/home/widget/home_filter_option.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
        ),
        child: Column(
          children: [
            HomeFilter(),
            HomeFilterOption(),
          ],
        ),
      ),
    );
  }
}
