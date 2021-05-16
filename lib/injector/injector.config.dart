// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/bloc/cocktail/cocktail_bloc.dart' as _i13;
import '../core/bloc/cocktail_detail/cocktail_detail_cubit.dart' as _i3;
import '../core/bloc/cocktail_filter_list/cocktail_filter_list.dart' as _i14;
import '../core/bloc/cocktail_filter_list/cocktail_filter_list_alcoholic/cocktail_filter_list_alcoholic_cubit.dart'
    as _i5;
import '../core/bloc/cocktail_filter_list/cocktail_filter_list_category/cocktail_filter_list_alcoholic_cubit.dart'
    as _i6;
import '../core/bloc/cocktail_filter_list/cocktail_filter_list_glass/cocktail_filter_list_alcoholic_cubit.dart'
    as _i7;
import '../core/bloc/cocktail_filter_option/cocktail_filter_option_cubit.dart'
    as _i8;
import '../core/data_source/cocktail/coktail_remote_data_source.dart' as _i16;
import '../core/data_source/cocktail_filter/cocktail_filter_remote_data_source.dart'
    as _i15;
import '../core/data_source/data_source.dart' as _i10;
import '../core/repository/cocktail/cocktail_repository.dart' as _i11;
import '../core/repository/cocktail_filter/cocktail_filter_repository.dart'
    as _i9;
import '../core/repository/repository.dart' as _i4;
import 'register_module.dart' as _i17; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.CocktailDetailCubit>(
      () => _i3.CocktailDetailCubit(get<_i4.CocktailRepository>()));
  gh.lazySingleton<_i5.CocktailFilterListAlcoholicCubit>(() =>
      _i5.CocktailFilterListAlcoholicCubit(
          get<_i4.CocktailFilterRepository>()));
  gh.lazySingleton<_i6.CocktailFilterListCategoryCubit>(() =>
      _i6.CocktailFilterListCategoryCubit(get<_i4.CocktailFilterRepository>()));
  gh.lazySingleton<_i7.CocktailFilterListGlassCubit>(() =>
      _i7.CocktailFilterListGlassCubit(get<_i4.CocktailFilterRepository>()));
  gh.lazySingleton<_i8.CocktailFilterOptionCubit>(
      () => _i8.CocktailFilterOptionCubit());
  gh.factory<_i9.CocktailFilterRepository>(() =>
      _i9.CocktailFilterRepository(get<_i10.CocktailFilterRemoteDataSource>()));
  gh.factory<_i11.CocktailRepository>(
      () => _i11.CocktailRepository(get<_i10.CocktailRemoteDataSource>()));
  gh.factory<_i12.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i13.CocktailBloc>(() => _i13.CocktailBloc(
      get<_i4.CocktailRepository>(),
      get<_i8.CocktailFilterOptionCubit>(),
      get<_i14.CocktailFilterListAlcoholicCubit>(),
      get<_i14.CocktailFilterListCategoryCubit>(),
      get<_i14.CocktailFilterListGlassCubit>()));
  gh.factory<_i15.CocktailFilterRemoteDataSource>(
      () => _i15.CocktailFilterRemoteDataSource(get<_i12.Dio>()));
  gh.factory<_i16.CocktailRemoteDataSource>(
      () => _i16.CocktailRemoteDataSource(get<_i12.Dio>()));
  return get;
}

class _$RegisterModule extends _i17.RegisterModule {}
