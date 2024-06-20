import 'package:assignment/src/shared/shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'summary_provider.g.dart';

/// A provider that provides the summary data.
///
/// Ideally, it would call some HTTP request to fetch the data.
/// But for the sake of demonstration, I am just returning a hardcoded value.
///
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
