import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'styles.dart';
import 'ui/screen/screen.dart';
import 'core/bloc/bloc.dart';
import 'core/model/model.dart';
import 'injector/injector.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<CocktailBloc>()),
        BlocProvider(create: (_) => getIt<CocktailFilterOptionCubit>()),
        BlocProvider(create: (_) => getIt<CocktailFilterListAlcoholicCubit>()),
        BlocProvider(create: (_) => getIt<CocktailFilterListCategoryCubit>()),
        BlocProvider(create: (_) => getIt<CocktailFilterListGlassCubit>()),
        BlocProvider(create: (_) => getIt<CocktailDetailCubit>()),
      ],
      child: ScreenUtilInit(
        designSize: Size(360, 690),
        builder: () => MaterialApp(
          theme: ThemeData(
            primaryColor: Styles.primaryColor,
          ),
          routes: {
            HomeScreen.routeName: (_) => HomeScreen(),
            CocktailDetailScreen.routeName: (context) {
              final args =
                  ModalRoute.of(context)!.settings.arguments as CocktailModel;
              return CocktailDetailScreen(cocktail: args);
            },
          },
        ),
      ),
    );
  }
}
