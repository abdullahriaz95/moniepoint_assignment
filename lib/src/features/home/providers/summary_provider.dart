import 'package:assignment/src/shared/shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'summary_provider.g.dart';

@riverpod
class SummaryProvider extends _$SummaryProvider {
  @override
  FutureOr<DailySummaryModel> build() {
    return const DailySummaryModel(
      numOfBuyingOffers: '1034',
      numOfRentOffers: '2212',
      stateName: 'Saint Petersburg',
    );
  }
}
