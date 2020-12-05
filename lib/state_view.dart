import 'package:flutter_app/cc_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_view.freezed.dart';

@freezed
abstract class ViewState with _$ViewState {
  const factory ViewState.content({
    @required List<CCData> ccData,
  }) = ContentState;

  const factory ViewState.loading() = LoadingState;
}
