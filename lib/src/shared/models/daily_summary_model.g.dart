// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailySummaryModelImpl _$$DailySummaryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DailySummaryModelImpl(
      numOfBuyingOffers: json['numOfBuyingOffers'] as String,
      numOfRentOffers: json['numOfRentOffers'] as String,
      stateName: json['stateName'] as String,
    );

Map<String, dynamic> _$$DailySummaryModelImplToJson(
        _$DailySummaryModelImpl instance) =>
    <String, dynamic>{
      'numOfBuyingOffers': instance.numOfBuyingOffers,
      'numOfRentOffers': instance.numOfRentOffers,
      'stateName': instance.stateName,
    };
