import 'package:yaml_io/yaml_io.dart' as yaml_io;

/// Converts a yaml string to a dart dynamic
dynamic fromYaml(String yaml) {
  return yaml_io.fromYaml(yaml);
}

/// Converts a dart dynamic to a yaml string
String toYaml(dynamic x) {
  return yaml_io.toYaml(x);
}
