// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_node.dart';

// **************************************************************************
// XmlSerializableGenerator
// **************************************************************************

void _$MatchNodeBuildXmlChildren(MatchNode instance, XmlBuilder builder,
    {Map<String, String> namespaces = const {}}) {
  final target = instance.target;
  final targetSerialized = target != null ? $TargetTypeEnumMap[target]! : null;
  if (targetSerialized != null) {
    builder.attribute('target', targetSerialized);
  }
  final tests = instance.tests;
  final testsSerialized = tests;
  if (testsSerialized != null) {
    for (final value in testsSerialized) {
      builder.element('test', nest: () {
        value.buildXmlChildren(builder, namespaces: namespaces);
      });
    }
  }
  final edits = instance.edits;
  final editsSerialized = edits;
  if (editsSerialized != null) {
    for (final value in editsSerialized) {
      builder.element('edit', nest: () {
        value.buildXmlChildren(builder, namespaces: namespaces);
      });
    }
  }
}

void _$MatchNodeBuildXmlElement(MatchNode instance, XmlBuilder builder,
    {Map<String, String> namespaces = const {}}) {
  builder.element('match', namespaces: namespaces, nest: () {
    instance.buildXmlChildren(builder, namespaces: namespaces);
  });
}

MatchNode _$MatchNodeFromXmlElement(XmlElement element) {
  final target = element.getAttribute('target');
  final tests = element.getElements('test');
  final edits = element.getElements('edit');
  return MatchNode(
      target: target != null
          ? $TargetTypeEnumMap.entries
              .singleWhere(
                  (targetTypeEnumMapEntry) =>
                      targetTypeEnumMapEntry.value == target,
                  orElse: () => throw ArgumentError(
                      '`$target` is not one of the supported values: ${$TargetTypeEnumMap.values.join(', ')}'))
              .key
          : null,
      tests: tests?.map((e) => TestNode.fromXmlElement(e)).toList(),
      edits: edits?.map((e) => EditNode.fromXmlElement(e)).toList());
}

List<XmlAttribute> _$MatchNodeToXmlAttributes(MatchNode instance,
    {Map<String, String?> namespaces = const {}}) {
  final attributes = <XmlAttribute>[];
  final target = instance.target;
  final targetSerialized = target != null ? $TargetTypeEnumMap[target]! : null;
  final targetConstructed = targetSerialized != null
      ? XmlAttribute(XmlName('target'), targetSerialized)
      : null;
  if (targetConstructed != null) {
    attributes.add(targetConstructed);
  }
  return attributes;
}

List<XmlNode> _$MatchNodeToXmlChildren(MatchNode instance,
    {Map<String, String?> namespaces = const {}}) {
  final children = <XmlNode>[];
  final tests = instance.tests;
  final testsSerialized = tests;
  final testsConstructed = testsSerialized?.map((e) => XmlElement(
      XmlName('test'),
      e.toXmlAttributes(namespaces: namespaces),
      e.toXmlChildren(namespaces: namespaces)));
  if (testsConstructed != null) {
    children.addAll(testsConstructed);
  }
  final edits = instance.edits;
  final editsSerialized = edits;
  final editsConstructed = editsSerialized?.map((e) => XmlElement(
      XmlName('edit'),
      e.toXmlAttributes(namespaces: namespaces),
      e.toXmlChildren(namespaces: namespaces)));
  if (editsConstructed != null) {
    children.addAll(editsConstructed);
  }
  return children;
}

XmlElement _$MatchNodeToXmlElement(MatchNode instance,
    {Map<String, String?> namespaces = const {}}) {
  return XmlElement(
      XmlName('match'),
      [
        ...namespaces.toXmlAttributes(),
        ...instance.toXmlAttributes(namespaces: namespaces)
      ],
      instance.toXmlChildren(namespaces: namespaces));
}
