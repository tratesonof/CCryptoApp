// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'state_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ViewStateTearOff {
  const _$ViewStateTearOff();

// ignore: unused_element
  ContentState content({@required List<CCData> ccData}) {
    return ContentState(
      ccData: ccData,
    );
  }

// ignore: unused_element
  LoadingState loading() {
    return const LoadingState();
  }
}

/// @nodoc
// ignore: unused_element
const $ViewState = _$ViewStateTearOff();

/// @nodoc
mixin _$ViewState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult content(List<CCData> ccData),
    @required TResult loading(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult content(List<CCData> ccData),
    TResult loading(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult content(ContentState value),
    @required TResult loading(LoadingState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult content(ContentState value),
    TResult loading(LoadingState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ViewStateCopyWith<$Res> {
  factory $ViewStateCopyWith(ViewState value, $Res Function(ViewState) then) =
      _$ViewStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ViewStateCopyWithImpl<$Res> implements $ViewStateCopyWith<$Res> {
  _$ViewStateCopyWithImpl(this._value, this._then);

  final ViewState _value;
  // ignore: unused_field
  final $Res Function(ViewState) _then;
}

/// @nodoc
abstract class $ContentStateCopyWith<$Res> {
  factory $ContentStateCopyWith(
          ContentState value, $Res Function(ContentState) then) =
      _$ContentStateCopyWithImpl<$Res>;
  $Res call({List<CCData> ccData});
}

/// @nodoc
class _$ContentStateCopyWithImpl<$Res> extends _$ViewStateCopyWithImpl<$Res>
    implements $ContentStateCopyWith<$Res> {
  _$ContentStateCopyWithImpl(
      ContentState _value, $Res Function(ContentState) _then)
      : super(_value, (v) => _then(v as ContentState));

  @override
  ContentState get _value => super._value as ContentState;

  @override
  $Res call({
    Object ccData = freezed,
  }) {
    return _then(ContentState(
      ccData: ccData == freezed ? _value.ccData : ccData as List<CCData>,
    ));
  }
}

/// @nodoc
class _$ContentState implements ContentState {
  const _$ContentState({@required this.ccData}) : assert(ccData != null);

  @override
  final List<CCData> ccData;

  @override
  String toString() {
    return 'ViewState.content(ccData: $ccData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ContentState &&
            (identical(other.ccData, ccData) ||
                const DeepCollectionEquality().equals(other.ccData, ccData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ccData);

  @override
  $ContentStateCopyWith<ContentState> get copyWith =>
      _$ContentStateCopyWithImpl<ContentState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult content(List<CCData> ccData),
    @required TResult loading(),
  }) {
    assert(content != null);
    assert(loading != null);
    return content(ccData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult content(List<CCData> ccData),
    TResult loading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (content != null) {
      return content(ccData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult content(ContentState value),
    @required TResult loading(LoadingState value),
  }) {
    assert(content != null);
    assert(loading != null);
    return content(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult content(ContentState value),
    TResult loading(LoadingState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (content != null) {
      return content(this);
    }
    return orElse();
  }
}

abstract class ContentState implements ViewState {
  const factory ContentState({@required List<CCData> ccData}) = _$ContentState;

  List<CCData> get ccData;
  $ContentStateCopyWith<ContentState> get copyWith;
}

/// @nodoc
abstract class $LoadingStateCopyWith<$Res> {
  factory $LoadingStateCopyWith(
          LoadingState value, $Res Function(LoadingState) then) =
      _$LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingStateCopyWithImpl<$Res> extends _$ViewStateCopyWithImpl<$Res>
    implements $LoadingStateCopyWith<$Res> {
  _$LoadingStateCopyWithImpl(
      LoadingState _value, $Res Function(LoadingState) _then)
      : super(_value, (v) => _then(v as LoadingState));

  @override
  LoadingState get _value => super._value as LoadingState;
}

/// @nodoc
class _$LoadingState implements LoadingState {
  const _$LoadingState();

  @override
  String toString() {
    return 'ViewState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult content(List<CCData> ccData),
    @required TResult loading(),
  }) {
    assert(content != null);
    assert(loading != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult content(List<CCData> ccData),
    TResult loading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult content(ContentState value),
    @required TResult loading(LoadingState value),
  }) {
    assert(content != null);
    assert(loading != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult content(ContentState value),
    TResult loading(LoadingState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements ViewState {
  const factory LoadingState() = _$LoadingState;
}
