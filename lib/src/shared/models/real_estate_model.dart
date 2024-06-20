import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'real_estate_model.freezed.dart';
part 'real_estate_model.g.dart';

@freezed
class RealEstateModel with _$RealEstateModel {
  const factory RealEstateModel({
    required String image,
    required String address,
    required String name,
    required double latitude,
    required double longitude,
    required double priceInUsd,
  }) = _RealEstateModel;

  factory RealEstateModel.fromJson(Map<String, Object?> json) =>
      _$RealEstateModelFromJson(json);
}
