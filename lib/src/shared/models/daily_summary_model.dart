import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'daily_summary_model.freezed.dart';
part 'daily_summary_model.g.dart';

@freezed
class DailySummaryModel with _$DailySummaryModel {
  const factory DailySummaryModel({
    required String numOfBuyingOffers,
    required String numOfRentOffers,
    required String stateName,
  }) = _DailySummaryModel;

  factory DailySummaryModel.fromJson(Map<String, Object?> json) =>
      _$DailySummaryModelFromJson(json);
}
