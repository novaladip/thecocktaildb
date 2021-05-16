import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextTitle extends StatelessWidget {
  const TextTitle(
    this.data, {
    Key? key,
    this.color = Colors.black,
    this.overflow,
    this.maxLines,
    this.textAlign,
  }) : super(key: key);

  final String data;
  final Color color;
  final TextOverflow? overflow;
  final int? maxLines;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        color: color,
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
      ),
      overflow: overflow,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
