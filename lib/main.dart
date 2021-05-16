import 'package:flutter/material.dart';
import 'package:thecocktaildb/injector/injector.dart';

import 'app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(App());
}
