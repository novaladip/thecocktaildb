import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:thecocktaildb/core/bloc/cocktail_filter_list/cocktail_filter_list.dart';
import 'package:thecocktaildb/core/bloc/cocktail_filter_option/cocktail_filter_option_cubit.dart';
import 'package:thecocktaildb/core/model/model.dart';
import 'package:thecocktaildb/core/repository/repository.dart';

part 'cocktail_event.dart';
part 'cocktail_state.dart';
part 'cocktail_bloc.freezed.dart';

@lazySingleton
class CocktailBloc extends Bloc<CocktailEvent, CocktailState> {
  CocktailBloc(
    this._cocktailRepository,
    this._cocktailFilterOptionCubit,
    this._cocktailFilterListAlcoholicCubit,
    this._cocktailFilterListCategoryCubit,
    this._cocktailFilterListGlassCubit,
  ) : super(CocktailState.initial()) {
    _cocktailFilterOptionCubit.stream.listen((state) {
      state.when(
        byAlcoholic: () => add(CocktailEvent.filterByAlcoholic()),
        byCategory: () => add(CocktailEvent.filterByCategory()),
        byGlass: () => add(CocktailEvent.filterByGlass()),
        byName: () => add(CocktailEvent.onClear()),
      );
    });

    _cocktailFilterListAlcoholicCubit.stream.listen((state) {
      final bool shouldReturn = _cocktailFilterOptionCubit.state.maybeWhen(
        byAlcoholic: () => false,
        orElse: () => true,
      );

      if (shouldReturn || state.status is! FetchStatusLoaded) return;

      add(CocktailEvent.filterByAlcoholic());
    });

    _cocktailFilterListCategoryCubit.stream.listen((state) {
      final shouldReturn = _cocktailFilterOptionCubit.state.maybeWhen(
        byCategory: () => false,
        orElse: () => true,
      );

      if (shouldReturn || state.status is! FetchStatusLoaded) return;

      add(CocktailEvent.filterByCategory());
    });

    _cocktailFilterListGlassCubit.stream.listen((state) {
      final shouldReturn = _cocktailFilterOptionCubit.state.maybeWhen(
        byGlass: () => false,
        orElse: () => true,
      );

      if (shouldReturn || state.status is! FetchStatusLoaded) return;

      add(CocktailEvent.filterByGlass());
    });
  }

  final CocktailRepository _cocktailRepository;
  final CocktailFilterOptionCubit _cocktailFilterOptionCubit;
  final CocktailFilterListAlcoholicCubit _cocktailFilterListAlcoholicCubit;
  final CocktailFilterListCategoryCubit _cocktailFilterListCategoryCubit;
  final CocktailFilterListGlassCubit _cocktailFilterListGlassCubit;
  String _lastSearchByName = '';

  @override
  Stream<Transition<CocktailEvent, CocktailState>> transformEvents(
    Stream<CocktailEvent> events,
    transitionFn,
  ) {
    final debounceDuration = Duration(milliseconds: 500);
    final nonDebounceEvents = events.where((event) => event is! _OnLoadMore);
    final debouncedEvents = events
        .where((event) => event is _OnLoadMore)
        .debounceTime(debounceDuration);

    return super.transformEvents(
      MergeStream([
        nonDebounceEvents,
        debouncedEvents,
      ]),
      transitionFn,
    );
  }

  @override
  Stream<CocktailState> mapEventToState(
    CocktailEvent event,
  ) async* {
    yield* event.map(
      searchByName: (e) async* {
        _lastSearchByName = e.name;
        yield* _initialFetch(() => _cocktailRepository.searchByName(e.name));
      },
      filterByAlcoholic: (e) async* {
        if (_cocktailFilterListAlcoholicCubit.state.selected == null) return;
        yield* _initialFetch(
          () => _cocktailRepository.filterByAlcoholic(
              _cocktailFilterListAlcoholicCubit.state.selected!.strAlcoholic),
        );
      },
      filterByCategory: (e) async* {
        if (_cocktailFilterListCategoryCubit.state.selected == null) return;

        yield* _initialFetch(
          () => _cocktailRepository.filterByCategory(
              _cocktailFilterListCategoryCubit.state.selected!.strCategory),
        );
      },
      filterByGlass: (e) async* {
        if (_cocktailFilterListGlassCubit.state.selected == null) return;

        yield* _initialFetch(
          () => _cocktailRepository.filterByGlass(
              _cocktailFilterListGlassCubit.state.selected!.strGlass),
        );
      },
      onLoadMore: (e) async* {
        if (state.isReachEnd) return;
        yield state.copyWith(page: state.page + 1);
      },
      onClear: (e) async* {
        yield CocktailState.initial();
      },
      onRetry: (e) async* {
        yield* _onRetry();
      },
    );
  }

  Stream<CocktailState> _initialFetch(
    Future<List<CocktailModel>> Function() fetch,
  ) async* {
    try {
      yield state.copyWith(status: FetchStatus.loading(), items: [], page: 1);
      final cocktails = await fetch();
      yield state.copyWith(
        page: 1,
        items: cocktails,
        status: FetchStatus.loaded(),
      );
    } catch (e) {
      print(e);
      yield state.copyWith(status: FetchStatus.failure(), items: [], page: 1);
    }
  }

  Stream<CocktailState> _onRetry() async* {
    try {
      yield state.copyWith(status: FetchStatus.loading(), items: [], page: 1);
      final cocktails = await _cocktailFilterOptionCubit.state.when(
        byName: () => _cocktailRepository.searchByName(_lastSearchByName),
        byAlcoholic: () => _cocktailRepository.filterByAlcoholic(
            _cocktailFilterListAlcoholicCubit.state.selected!.strAlcoholic),
        byCategory: () => _cocktailRepository.filterByCategory(
            _cocktailFilterListCategoryCubit.state.selected!.strCategory),
        byGlass: () => _cocktailRepository.filterByGlass(
            _cocktailFilterListGlassCubit.state.selected!.strGlass),
      );
      yield state.copyWith(
        page: 1,
        items: cocktails,
        status: FetchStatus.loaded(),
      );
    } catch (e) {
      print(e);
      yield state.copyWith(status: FetchStatus.failure(), items: [], page: 1);
    }
  }
}
