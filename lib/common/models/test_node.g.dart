// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_node.dart';

// **************************************************************************
// XmlSerializableGenerator
// **************************************************************************

void _$TestNodeBuildXmlChildren(TestNode instance, XmlBuilder builder,
    {Map<String, String> namespaces = const {}}) {
  final compare = instance.compare;
  final compareSerialized =
      compare != null ? $CompareTypeEnumMap[compare]! : null;
  if (compareSerialized != null) {
    builder.attribute('compare', compareSerialized);
  }
  final name = instance.name;
  final nameSerialized = name != null ? $NameTypeEnumMap[name]! : null;
  if (nameSerialized != null) {
    builder.attribute('name', nameSerialized);
  }
  final string = instance.string;
  final stringSerialized = string;
  builder.element('string', nest: () {
    if (stringSerialized != null) {
      stringSerialized.buildXmlChildren(builder, namespaces: namespaces);
    }
  });
}

void _$TestNodeBuildXmlElement(TestNode instance, XmlBuilder builder,
    {Map<String, String> namespaces = const {}}) {
  builder.element('test', namespaces: namespaces, nest: () {
    instance.buildXmlChildren(builder, namespaces: namespaces);
  });
}

TestNode _$TestNodeFromXmlElement(XmlElement element) {
  final compare = element.getAttribute('compare');
  final name = element.getAttribute('name');
  final string = element.getElement('string');
  return TestNode(
      compare: compare != null
          ? $CompareTypeEnumMap.entries
              .singleWhere(
                  (compareTypeEnumMapEntry) =>
                      compareTypeEnumMapEntry.value == compare,
                  orElse: () => throw ArgumentError(
                      '`$compare` is not one of the supported values: ${$CompareTypeEnumMap.values.join(', ')}'))
              .key
          : null,
      name: name != null
          ? $NameTypeEnumMap.entries
              .singleWhere(
                  (nameTypeEnumMapEntry) => nameTypeEnumMapEntry.value == name,
                  orElse: () => throw ArgumentError(
                      '`$name` is not one of the supported values: ${$NameTypeEnumMap.values.join(', ')}'))
              .key
          : null,
      string: string != null ? StringNode.fromXmlElement(string) : null);
}

List<XmlAttribute> _$TestNodeToXmlAttributes(TestNode instance,
    {Map<String, String?> namespaces = const {}}) {
  final attributes = <XmlAttribute>[];
  final compare = instance.compare;
  final compareSerialized =
      compare != null ? $CompareTypeEnumMap[compare]! : null;
  final compareConstructed = compareSerialized != null
      ? XmlAttribute(XmlName('compare'), compareSerialized)
      : null;
  if (compareConstructed != null) {
    attributes.add(compareConstructed);
  }
  final name = instance.name;
  final nameSerialized = name != null ? $NameTypeEnumMap[name]! : null;
  final nameConstructed = nameSerialized != null
      ? XmlAttribute(XmlName('name'), nameSerialized)
      : null;
  if (nameConstructed != null) {
    attributes.add(nameConstructed);
  }
  return attributes;
}

List<XmlNode> _$TestNodeToXmlChildren(TestNode instance,
    {Map<String, String?> namespaces = const {}}) {
  final children = <XmlNode>[];
  final string = instance.string;
  final stringSerialized = string;
  final stringConstructed = XmlElement(
      XmlName('string'),
      stringSerialized?.toXmlAttributes(namespaces: namespaces) ?? [],
      stringSerialized?.toXmlChildren(namespaces: namespaces) ?? []);
  children.add(stringConstructed);
  return children;
}

XmlElement _$TestNodeToXmlElement(TestNode instance,
    {Map<String, String?> namespaces = const {}}) {
  return XmlElement(
      XmlName('test'),
      [
        ...namespaces.toXmlAttributes(),
        ...instance.toXmlAttributes(namespaces: namespaces)
      ],
      instance.toXmlChildren(namespaces: namespaces));
}
