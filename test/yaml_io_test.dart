import 'package:test/test.dart';
import 'package:text_serializer/text_serializer.dart' as ts;

main() {
  group('YamlTests', () {
    test('yaml_io(1)', () {
      final yaml = ts.toYaml({
        'name': 'Joe',
        'null_data': null,
        'ids': [10, 20, 30],
        'desc': 'This is\na multiline\ntext',
        'enabled': true,
      });
      print(yaml);
      dynamic obj = ts.fromYaml(yaml);
      print(obj['ids'][1]);
      expect(obj['ids'][1] == 20, isTrue);
      print(ts.toYaml(null));
      print(ts.toYaml(123));
      print(ts.toYaml('A string'));
      print(ts.toYaml('A multiline\nstring'));
    });
  });
}
