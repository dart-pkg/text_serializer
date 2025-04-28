import 'dart:core';
import 'dart:convert' as convert;

/// Converts a json string to a dart dynamic
dynamic fromJson(String json) {
  return convert.json.decode(json);
}

/// Converts a dart dynamic to a json string
String toJson(dynamic x, [String? indent]) {
  if (indent == null) {
    return convert.json.encode(x);
  }
  final encoder = convert.JsonEncoder.withIndent(indent);
  return encoder.convert(x);
}
