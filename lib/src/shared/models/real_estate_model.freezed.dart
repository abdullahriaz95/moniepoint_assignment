// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'real_estate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RealEstateModel _$RealEstateModelFromJson(Map<String, dynamic> json) {
  return _RealEstateModel.fromJson(json);
}

/// @nodoc
mixin _$RealEstateModel {
  String get image => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double get priceInUsd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RealEstateModelCopyWith<RealEstateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RealEstateModelCopyWith<$Res> {
  factory $RealEstateModelCopyWith(
          RealEstateModel value, $Res Function(RealEstateModel) then) =
      _$RealEstateModelCopyWithImpl<$Res, RealEstateModel>;
  @useResult
  $Res call(
      {String image,
      String address,
      String name,
      double latitude,
      double longitude,
      double priceInUsd});
}

/// @nodoc
class _$RealEstateModelCopyWithImpl<$Res, $Val extends RealEstateModel>
    implements $RealEstateModelCopyWith<$Res> {
  _$RealEstateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? address = null,
    Object? name = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? priceInUsd = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      priceInUsd: null == priceInUsd
          ? _value.priceInUsd
          : priceInUsd // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RealEstateModelImplCopyWith<$Res>
    implements $RealEstateModelCopyWith<$Res> {
  factory _$$RealEstateModelImplCopyWith(_$RealEstateModelImpl value,
          $Res Function(_$RealEstateModelImpl) then) =
      __$$RealEstateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String image,
      String address,
      String name,
      double latitude,
      double longitude,
      double priceInUsd});
}

/// @nodoc
class __$$RealEstateModelImplCopyWithImpl<$Res>
    extends _$RealEstateModelCopyWithImpl<$Res, _$RealEstateModelImpl>
    implements _$$RealEstateModelImplCopyWith<$Res> {
  __$$RealEstateModelImplCopyWithImpl(
      _$RealEstateModelImpl _value, $Res Function(_$RealEstateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? address = null,
    Object? name = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? priceInUsd = null,
  }) {
    return _then(_$RealEstateModelImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      priceInUsd: null == priceInUsd
          ? _value.priceInUsd
          : priceInUsd // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RealEstateModelImpl
    with DiagnosticableTreeMixin
    implements _RealEstateModel {
  const _$RealEstateModelImpl(
      {required this.image,
      required this.address,
      required this.name,
      required this.latitude,
      required this.longitude,
      required this.priceInUsd});

  factory _$RealEstateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RealEstateModelImplFromJson(json);

  @override
  final String image;
  @override
  final String address;
  @override
  final String name;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final double priceInUsd;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RealEstateModel(image: $image, address: $address, name: $name, latitude: $latitude, longitude: $longitude, priceInUsd: $priceInUsd)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RealEstateModel'))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('latitude', latitude))
      ..add(DiagnosticsProperty('longitude', longitude))
      ..add(DiagnosticsProperty('priceInUsd', priceInUsd));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RealEstateModelImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.priceInUsd, priceInUsd) ||
                other.priceInUsd == priceInUsd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, image, address, name, latitude, longitude, priceInUsd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RealEstateModelImplCopyWith<_$RealEstateModelImpl> get copyWith =>
      __$$RealEstateModelImplCopyWithImpl<_$RealEstateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RealEstateModelImplToJson(
      this,
    );
  }
}

abstract class _RealEstateModel implements RealEstateModel {
  const factory _RealEstateModel(
      {required final String image,
      required final String address,
      required final String name,
      required final double latitude,
      required final double longitude,
      required final double priceInUsd}) = _$RealEstateModelImpl;

  factory _RealEstateModel.fromJson(Map<String, dynamic> json) =
      _$RealEstateModelImpl.fromJson;

  @override
  String get image;
  @override
  String get address;
  @override
  String get name;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  double get priceInUsd;
  @override
  @JsonKey(ignore: true)
  _$$RealEstateModelImplCopyWith<_$RealEstateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
