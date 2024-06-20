// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'real_estate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RealEstateModelImpl _$$RealEstateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RealEstateModelImpl(
      image: json['image'] as String,
      address: json['address'] as String,
      name: json['name'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      priceInUsd: (json['priceInUsd'] as num).toDouble(),
    );

Map<String, dynamic> _$$RealEstateModelImplToJson(
        _$RealEstateModelImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
      'address': instance.address,
      'name': instance.name,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'priceInUsd': instance.priceInUsd,
    };
