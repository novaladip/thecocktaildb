import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';
import 'package:thecocktaildb/core/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:thecocktaildb/core/model/cocktail_model.dart';
import 'package:thecocktaildb/ui/screen/cocktail_detail/cocktail_detail_screen.dart';
import 'package:thecocktaildb/ui/widget/load_failure/load_failure.dart';
import 'package:thecocktaildb/ui/widget/loading_indicator/loading_indicator.dart';

import '../../../test_helper/json/json.dart';
import '../../../test_helper/test_helper.dart';

class MockCocktailDetailCubit extends MockCubit<CocktailDetailState>
    implements CocktailDetailCubit {}

class FakeCocktailDetailState extends Fake implements CocktailDetailState {}

void main() {
  group('CocktailDetailScreen', () {
    late CocktailDetailCubit cocktailDetailCubit;
    late Widget subject;

    final cocktail = CocktailModel(
      idDrink: '1',
      strDrink: 'Test',
      strDrinkThumb: 'imgurl',
    );

    setUpAll(() {
      registerFallbackValue(FakeCocktailDetailState());
    });

    setUp(() {
      cocktailDetailCubit = MockCocktailDetailCubit();
      subject = BlocProvider.value(
        value: cocktailDetailCubit,
        child: buildTestableWidget(
          child: CocktailDetailScreen(cocktail: cocktail),
        ),
      );
    });

    group('renders correctly when CocktailDetailState is', () {
      testWidgets('initial', (tester) async {
        await mockNetworkImages(() async {
          // mock
          when(() => cocktailDetailCubit.state).thenReturn(
            CocktailDetailState.loading(),
          );
          when(() => cocktailDetailCubit.fetch(cocktail.idDrink))
              .thenAnswer((_) async {
            return;
          });

          await tester.pumpWidget(subject);

          expect(find.byType(LoadingIndicator), findsOneWidget);
        });
      });

      testWidgets('loading', (tester) async {
        await mockNetworkImages(() async {
          // mock
          when(() => cocktailDetailCubit.state).thenReturn(
            CocktailDetailState.loading(),
          );
          when(() => cocktailDetailCubit.fetch(cocktail.idDrink))
              .thenAnswer((_) async {
            return;
          });

          await tester.pumpWidget(subject);

          expect(find.byType(LoadingIndicator), findsOneWidget);
        });
      });

      testWidgets('failure', (tester) async {
        await mockNetworkImages(() async {
          // mock
          when(() => cocktailDetailCubit.state).thenReturn(
            CocktailDetailState.failure(),
          );
          when(() => cocktailDetailCubit.fetch(cocktail.idDrink))
              .thenAnswer((_) async {
            return;
          });

          await tester.pumpWidget(subject);

          expect(find.byType(LoadFailure), findsOneWidget);

          final retryButtonFinder = find.text('Retry').hitTestable();
          expect(retryButtonFinder, findsOneWidget);

          await tester.tap(retryButtonFinder);

          verify(() => cocktailDetailCubit.fetch(cocktail.idDrink)).called(2);
        });
      });

      testWidgets('loaded', (tester) async {
        await mockNetworkImages(() async {
          final cocktailDetail =
              CocktailDetailModel.fromJson(jsonCocktailDetail);

          // mock
          when(() => cocktailDetailCubit.state).thenReturn(
            CocktailDetailState.loaded(cocktailDetail),
          );
          when(() => cocktailDetailCubit.fetch(cocktail.idDrink))
              .thenAnswer((_) async {
            return;
          });

          await tester.pumpWidget(subject);

          await tester.pumpAndSettle();

          expect(find.text('Instruction'), findsOneWidget);
          expect(find.text(cocktailDetail.strInstructions), findsOneWidget);
          expect(find.text('Ingredients'), findsOneWidget);
          cocktailDetail.ingredients.forEach((ingredient) {
            expect(find.text('- $ingredient'), findsOneWidget);
          });
        });
      });
    });

    group('calls', () {
      testWidgets('call fetch on init state', (tester) async {
        await mockNetworkImages(() async {
          // mock
          when(() => cocktailDetailCubit.state).thenReturn(
            CocktailDetailState.initial(),
          );
          when(() => cocktailDetailCubit.fetch(cocktail.idDrink))
              .thenAnswer((_) async {
            return;
          });

          await tester.pumpWidget(subject);
          verify(() => cocktailDetailCubit.fetch(cocktail.idDrink)).called(1);
        });
      });
    });
  });
}
