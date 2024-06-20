// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DailySummaryModel _$DailySummaryModelFromJson(Map<String, dynamic> json) {
  return _DailySummaryModel.fromJson(json);
}

/// @nodoc
mixin _$DailySummaryModel {
  String get numOfBuyingOffers => throw _privateConstructorUsedError;
  String get numOfRentOffers => throw _privateConstructorUsedError;
  String get stateName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailySummaryModelCopyWith<DailySummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailySummaryModelCopyWith<$Res> {
  factory $DailySummaryModelCopyWith(
          DailySummaryModel value, $Res Function(DailySummaryModel) then) =
      _$DailySummaryModelCopyWithImpl<$Res, DailySummaryModel>;
  @useResult
  $Res call(
      {String numOfBuyingOffers, String numOfRentOffers, String stateName});
}

/// @nodoc
class _$DailySummaryModelCopyWithImpl<$Res, $Val extends DailySummaryModel>
    implements $DailySummaryModelCopyWith<$Res> {
  _$DailySummaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numOfBuyingOffers = null,
    Object? numOfRentOffers = null,
    Object? stateName = null,
  }) {
    return _then(_value.copyWith(
      numOfBuyingOffers: null == numOfBuyingOffers
          ? _value.numOfBuyingOffers
          : numOfBuyingOffers // ignore: cast_nullable_to_non_nullable
              as String,
      numOfRentOffers: null == numOfRentOffers
          ? _value.numOfRentOffers
          : numOfRentOffers // ignore: cast_nullable_to_non_nullable
              as String,
      stateName: null == stateName
          ? _value.stateName
          : stateName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailySummaryModelImplCopyWith<$Res>
    implements $DailySummaryModelCopyWith<$Res> {
  factory _$$DailySummaryModelImplCopyWith(_$DailySummaryModelImpl value,
          $Res Function(_$DailySummaryModelImpl) then) =
      __$$DailySummaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String numOfBuyingOffers, String numOfRentOffers, String stateName});
}

/// @nodoc
class __$$DailySummaryModelImplCopyWithImpl<$Res>
    extends _$DailySummaryModelCopyWithImpl<$Res, _$DailySummaryModelImpl>
    implements _$$DailySummaryModelImplCopyWith<$Res> {
  __$$DailySummaryModelImplCopyWithImpl(_$DailySummaryModelImpl _value,
      $Res Function(_$DailySummaryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numOfBuyingOffers = null,
    Object? numOfRentOffers = null,
    Object? stateName = null,
  }) {
    return _then(_$DailySummaryModelImpl(
      numOfBuyingOffers: null == numOfBuyingOffers
          ? _value.numOfBuyingOffers
          : numOfBuyingOffers // ignore: cast_nullable_to_non_nullable
              as String,
      numOfRentOffers: null == numOfRentOffers
          ? _value.numOfRentOffers
          : numOfRentOffers // ignore: cast_nullable_to_non_nullable
              as String,
      stateName: null == stateName
          ? _value.stateName
          : stateName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailySummaryModelImpl
    with DiagnosticableTreeMixin
    implements _DailySummaryModel {
  const _$DailySummaryModelImpl(
      {required this.numOfBuyingOffers,
      required this.numOfRentOffers,
      required this.stateName});

  factory _$DailySummaryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailySummaryModelImplFromJson(json);

  @override
  final String numOfBuyingOffers;
  @override
  final String numOfRentOffers;
  @override
  final String stateName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DailySummaryModel(numOfBuyingOffers: $numOfBuyingOffers, numOfRentOffers: $numOfRentOffers, stateName: $stateName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DailySummaryModel'))
      ..add(DiagnosticsProperty('numOfBuyingOffers', numOfBuyingOffers))
      ..add(DiagnosticsProperty('numOfRentOffers', numOfRentOffers))
      ..add(DiagnosticsProperty('stateName', stateName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailySummaryModelImpl &&
            (identical(other.numOfBuyingOffers, numOfBuyingOffers) ||
                other.numOfBuyingOffers == numOfBuyingOffers) &&
            (identical(other.numOfRentOffers, numOfRentOffers) ||
                other.numOfRentOffers == numOfRentOffers) &&
            (identical(other.stateName, stateName) ||
                other.stateName == stateName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, numOfBuyingOffers, numOfRentOffers, stateName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailySummaryModelImplCopyWith<_$DailySummaryModelImpl> get copyWith =>
      __$$DailySummaryModelImplCopyWithImpl<_$DailySummaryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailySummaryModelImplToJson(
      this,
    );
  }
}

abstract class _DailySummaryModel implements DailySummaryModel {
  const factory _DailySummaryModel(
      {required final String numOfBuyingOffers,
      required final String numOfRentOffers,
      required final String stateName}) = _$DailySummaryModelImpl;

  factory _DailySummaryModel.fromJson(Map<String, dynamic> json) =
      _$DailySummaryModelImpl.fromJson;

  @override
  String get numOfBuyingOffers;
  @override
  String get numOfRentOffers;
  @override
  String get stateName;
  @override
  @JsonKey(ignore: true)
  _$$DailySummaryModelImplCopyWith<_$DailySummaryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
