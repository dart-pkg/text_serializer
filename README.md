# text_serializer
[![Pub](https://img.shields.io/pub/v/text_serializer.svg)](https://pub.dartlang.org/packages/text_serializer)

```dart
import 'package:text_serializer/text_serializer.dart';

final testData = {
  'name': 'Joe',
  'url': null,
  'ids': [10, 20, 30],
  'desc': 'This is\na multiline\ntext',
  'enabled': true,
};

main() {
  final $yaml = toYaml(testData);
  print('\$yaml=`${$yaml}`');
  final $obj = fromYaml($yaml);
  print('\$obj=${$obj}');
  final $json = toJson($obj, '  ');
  print('\$json=${$json}');
  final $obj2 = fromJson($json);
  print('\$obj2=${$obj2}');
}

/* [Result]
$yaml=`name: Joe
url:
ids:
  - 10
  - 20
  - 30
desc: |-
  This is
  a multiline
  text
enabled: true
`
$obj={name: Joe, url: null, ids: [10, 20, 30], desc: This is
a multiline
text, enabled: true}
$json={
  "name": "Joe",
  "url": null,
  "ids": [
    10,
    20,
    30
  ],
  "desc": "This is\na multiline\ntext",
  "enabled": true
}
$obj2={name: Joe, url: null, ids: [10, 20, 30], desc: This is
a multiline
text, enabled: true}
 */
```