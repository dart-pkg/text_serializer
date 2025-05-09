# CHANGELOG.md

## 2025.421.821

- Initial release

## 2025.421.1109

- Removed trim() operation from toYaml() function

## 2025.423.1408

- Within toYaml(): final $yamlWriter = YamlWriter(allowUnquotedStrings: true);

## 2025.423.1428

- toYaml() now does not quote string value

## 2025.423.1447

- Changed description of pubspec.yaml

## 2025.426.1009

- Added: example/example.dart

## 2025.428.859

- Introduced yaml_magic package

## 2025.428.923

- Fixed bug of toYaml() returning an empty string

## 2025.430.1719

- Added: platforms in pubspec.yaml

## 2025.502.1557

- Update README.md

```
--- a/pubspec.yaml
+++ b/pubspec.yaml
-version: 2025.430.1719
+version: 2025.502.1557
```

## 2025.502.1757

- Introduced dependency to yaml_io package

```
--- a/pubspec.yaml
+++ b/pubspec.yaml
-version: 2025.502.1557
+version: 2025.502.1757
-  yaml: ^3.1.3
-  yaml_magic: ^1.0.6
-  yaml_writer: ^2.1.0
+  yaml_io: ^2025.502.1751
```
