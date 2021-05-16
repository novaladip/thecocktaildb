import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextBody extends StatelessWidget {
  const TextBody(
    this.data, {
    Key? key,
    this.color = Colors.black,
    this.overflow,
    this.maxLines,
    this.textAlign,
    this.fontWeight,
  }) : super(key: key);

  final String data;
  final Color color;
  final TextOverflow? overflow;
  final int? maxLines;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        color: color,
        fontSize: 14.sp,
        fontWeight: fontWeight,
      ),
      overflow: overflow,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
