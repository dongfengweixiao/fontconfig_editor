// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'string_node.dart';

// **************************************************************************
// XmlSerializableGenerator
// **************************************************************************

void _$StringNodeBuildXmlChildren(StringNode instance, XmlBuilder builder,
    {Map<String, String> namespaces = const {}}) {
  final text = instance.text;
  final textSerialized = text;
  if (textSerialized != null) {
    builder.text(textSerialized);
  }
}

void _$StringNodeBuildXmlElement(StringNode instance, XmlBuilder builder,
    {Map<String, String> namespaces = const {}}) {
  builder.element('string', namespaces: namespaces, nest: () {
    instance.buildXmlChildren(builder, namespaces: namespaces);
  });
}

StringNode _$StringNodeFromXmlElement(XmlElement element) {
  final text = element.getText();
  return StringNode(text: text);
}

List<XmlAttribute> _$StringNodeToXmlAttributes(StringNode instance,
    {Map<String, String?> namespaces = const {}}) {
  final attributes = <XmlAttribute>[];
  return attributes;
}

List<XmlNode> _$StringNodeToXmlChildren(StringNode instance,
    {Map<String, String?> namespaces = const {}}) {
  final children = <XmlNode>[];
  final text = instance.text;
  final textSerialized = text;
  final textConstructed =
      textSerialized != null ? XmlText(textSerialized) : null;
  if (textConstructed != null) {
    children.add(textConstructed);
  }
  return children;
}

XmlElement _$StringNodeToXmlElement(StringNode instance,
    {Map<String, String?> namespaces = const {}}) {
  return XmlElement(
      XmlName('string'),
      [
        ...namespaces.toXmlAttributes(),
        ...instance.toXmlAttributes(namespaces: namespaces)
      ],
      instance.toXmlChildren(namespaces: namespaces));
}
