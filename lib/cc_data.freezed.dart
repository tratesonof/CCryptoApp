// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cc_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CCData _$CCDataFromJson(Map<String, dynamic> json) {
  return _CCData.fromJson(json);
}

/// @nodoc
class _$CCDataTearOff {
  const _$CCDataTearOff();

// ignore: unused_element
  _CCData call(String name, String symbol, String rank, String priceUsd) {
    return _CCData(
      name,
      symbol,
      rank,
      priceUsd,
    );
  }

// ignore: unused_element
  CCData fromJson(Map<String, Object> json) {
    return CCData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CCData = _$CCDataTearOff();

/// @nodoc
mixin _$CCData {
  String get name;
  String get symbol;
  String get rank;
  String get priceUsd;

  Map<String, dynamic> toJson();
  $CCDataCopyWith<CCData> get copyWith;
}

/// @nodoc
abstract class $CCDataCopyWith<$Res> {
  factory $CCDataCopyWith(CCData value, $Res Function(CCData) then) =
      _$CCDataCopyWithImpl<$Res>;
  $Res call({String name, String symbol, String rank, String priceUsd});
}

/// @nodoc
class _$CCDataCopyWithImpl<$Res> implements $CCDataCopyWith<$Res> {
  _$CCDataCopyWithImpl(this._value, this._then);

  final CCData _value;
  // ignore: unused_field
  final $Res Function(CCData) _then;

  @override
  $Res call({
    Object name = freezed,
    Object symbol = freezed,
    Object rank = freezed,
    Object priceUsd = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      symbol: symbol == freezed ? _value.symbol : symbol as String,
      rank: rank == freezed ? _value.rank : rank as String,
      priceUsd: priceUsd == freezed ? _value.priceUsd : priceUsd as String,
    ));
  }
}

/// @nodoc
abstract class _$CCDataCopyWith<$Res> implements $CCDataCopyWith<$Res> {
  factory _$CCDataCopyWith(_CCData value, $Res Function(_CCData) then) =
      __$CCDataCopyWithImpl<$Res>;
  @override
  $Res call({String name, String symbol, String rank, String priceUsd});
}

/// @nodoc
class __$CCDataCopyWithImpl<$Res> extends _$CCDataCopyWithImpl<$Res>
    implements _$CCDataCopyWith<$Res> {
  __$CCDataCopyWithImpl(_CCData _value, $Res Function(_CCData) _then)
      : super(_value, (v) => _then(v as _CCData));

  @override
  _CCData get _value => super._value as _CCData;

  @override
  $Res call({
    Object name = freezed,
    Object symbol = freezed,
    Object rank = freezed,
    Object priceUsd = freezed,
  }) {
    return _then(_CCData(
      name == freezed ? _value.name : name as String,
      symbol == freezed ? _value.symbol : symbol as String,
      rank == freezed ? _value.rank : rank as String,
      priceUsd == freezed ? _value.priceUsd : priceUsd as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CCData with DiagnosticableTreeMixin implements _CCData {
  _$_CCData(this.name, this.symbol, this.rank, this.priceUsd)
      : assert(name != null),
        assert(symbol != null),
        assert(rank != null),
        assert(priceUsd != null);

  factory _$_CCData.fromJson(Map<String, dynamic> json) =>
      _$_$_CCDataFromJson(json);

  @override
  final String name;
  @override
  final String symbol;
  @override
  final String rank;
  @override
  final String priceUsd;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CCData(name: $name, symbol: $symbol, rank: $rank, priceUsd: $priceUsd)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CCData'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('symbol', symbol))
      ..add(DiagnosticsProperty('rank', rank))
      ..add(DiagnosticsProperty('priceUsd', priceUsd));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CCData &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.symbol, symbol) ||
                const DeepCollectionEquality().equals(other.symbol, symbol)) &&
            (identical(other.rank, rank) ||
                const DeepCollectionEquality().equals(other.rank, rank)) &&
            (identical(other.priceUsd, priceUsd) ||
                const DeepCollectionEquality()
                    .equals(other.priceUsd, priceUsd)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(symbol) ^
      const DeepCollectionEquality().hash(rank) ^
      const DeepCollectionEquality().hash(priceUsd);

  @override
  _$CCDataCopyWith<_CCData> get copyWith =>
      __$CCDataCopyWithImpl<_CCData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CCDataToJson(this);
  }
}

abstract class _CCData implements CCData {
  factory _CCData(String name, String symbol, String rank, String priceUsd) =
      _$_CCData;

  factory _CCData.fromJson(Map<String, dynamic> json) = _$_CCData.fromJson;

  @override
  String get name;
  @override
  String get symbol;
  @override
  String get rank;
  @override
  String get priceUsd;
  @override
  _$CCDataCopyWith<_CCData> get copyWith;
}
