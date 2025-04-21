import 'package:test/test.dart';
import 'package:text_serializer/text_serializer.dart' as ts;

final testData = {
  'name': 'Joe',
  'ids': [10, 20, 30],
  'desc': 'This is\na multiline\ntext',
  'enabled': true,
};

void main() {
  group('Run', () {
    test('run1', () {
      final $yaml = ts.toYaml(testData);
      print('\$yaml=`${$yaml}`');
      final $obj = ts.fromYaml($yaml);
      print('\$obj=${$obj}');
      final $json = ts.toJson($obj, '  ');
      print('\$json=${$json}');
      final $obj2 = ts.fromJson($json);
      print('\$obj2=${$obj2}');
    });
  });
}
