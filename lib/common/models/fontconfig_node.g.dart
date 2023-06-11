// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fontconfig_node.dart';

// **************************************************************************
// XmlSerializableGenerator
// **************************************************************************

void _$FontconfigNodeBuildXmlChildren(
    FontconfigNode instance, XmlBuilder builder,
    {Map<String, String> namespaces = const {}}) {
  final matches = instance.matches;
  final matchesSerialized = matches;
  if (matchesSerialized != null) {
    for (final value in matchesSerialized) {
      builder.element('match', nest: () {
        value.buildXmlChildren(builder, namespaces: namespaces);
      });
    }
  }
}

void _$FontconfigNodeBuildXmlElement(
    FontconfigNode instance, XmlBuilder builder,
    {Map<String, String> namespaces = const {}}) {
  builder.element('fontconfig', namespaces: namespaces, nest: () {
    instance.buildXmlChildren(builder, namespaces: namespaces);
  });
}

FontconfigNode _$FontconfigNodeFromXmlElement(XmlElement element) {
  final matches = element.getElements('match');
  return FontconfigNode(
      matches: matches?.map((e) => MatchNode.fromXmlElement(e)).toList());
}

List<XmlAttribute> _$FontconfigNodeToXmlAttributes(FontconfigNode instance,
    {Map<String, String?> namespaces = const {}}) {
  final attributes = <XmlAttribute>[];
  return attributes;
}

List<XmlNode> _$FontconfigNodeToXmlChildren(FontconfigNode instance,
    {Map<String, String?> namespaces = const {}}) {
  final children = <XmlNode>[];
  final matches = instance.matches;
  final matchesSerialized = matches;
  final matchesConstructed = matchesSerialized?.map((e) => XmlElement(
      XmlName('match'),
      e.toXmlAttributes(namespaces: namespaces),
      e.toXmlChildren(namespaces: namespaces)));
  if (matchesConstructed != null) {
    children.addAll(matchesConstructed);
  }
  return children;
}

XmlElement _$FontconfigNodeToXmlElement(FontconfigNode instance,
    {Map<String, String?> namespaces = const {}}) {
  return XmlElement(
      XmlName('fontconfig'),
      [
        ...namespaces.toXmlAttributes(),
        ...instance.toXmlAttributes(namespaces: namespaces)
      ],
      instance.toXmlChildren(namespaces: namespaces));
}
