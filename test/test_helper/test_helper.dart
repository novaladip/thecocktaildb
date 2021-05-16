import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mocktail/mocktail.dart';
import 'package:thecocktaildb/styles.dart';

class DioAdapterMock extends Mock implements HttpClientAdapter {}

class FakeRequestOptions extends Fake implements RequestOptions {}

ResponseBody buildResponseBody({
  required dynamic payload,
  int statusCode = 200,
  Map<String, List<String>> headers = const {
    Headers.contentTypeHeader: [Headers.jsonContentType]
  },
}) {
  return ResponseBody.fromString(
    json.encode(payload),
    statusCode,
    headers: headers,
  );
}

class WidgetWrapper extends StatelessWidget {
  const WidgetWrapper(this.child);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () => MaterialApp(
        theme: ThemeData(primaryColor: Styles.primaryColor),
        routes: {
          '/': (_) => child,
        },
      ),
    );
  }
}

Widget buildTestableWidget({required Widget child}) {
  return WidgetWrapper(child);
}
