import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sembast/sembast.dart';

part 'cc_data.freezed.dart';

part 'cc_data.g.dart';

@freezed
abstract class CCData implements _$CCData {
  factory CCData(
    String name,
    String symbol,
    String rank,
    String priceUsd,
  ) = _CCData;

  factory CCData.fromJson(Map<String, dynamic> json) => _$CCDataFromJson(json);
}
