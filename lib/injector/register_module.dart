import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: 'https://www.thecocktaildb.com/api/json/v1/1',
        ),
      );
}
