import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpacingVertical extends StatelessWidget {
  final int space;

  const SpacingVertical({
    Key? key,
    this.space = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 5.h * space);
  }
}

class SpacingHorizontal extends StatelessWidget {
  final int space;

  const SpacingHorizontal({
    Key? key,
    this.space = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 5.w * space);
  }
}
