import 'package:xml/xml.dart';
import 'package:xml_annotation/xml_annotation.dart' as annotation;

part 'string_node.g.dart';

@annotation.XmlRootElement(name: 'string')
@annotation.XmlSerializable()
class StringNode {
  @annotation.XmlText()
  String? text;

  StringNode({
    this.text,
  });

  factory StringNode.fromXmlElement(XmlElement e) =>
      _$StringNodeFromXmlElement(e);

  @override
  String toString() {
    return 'String{text: $text}';
  }

  void buildXmlChildren(
    XmlBuilder builder, {
    Map<String, String> namespaces = const {},
  }) =>
      _$StringNodeBuildXmlChildren(this, builder, namespaces: namespaces);

  void buildXmlElement(
    XmlBuilder builder, {
    Map<String, String> namespaces = const {},
  }) =>
      _$StringNodeBuildXmlElement(this, builder, namespaces: namespaces);

  List<XmlAttribute> toXmlAttributes({
    Map<String, String?> namespaces = const {},
  }) =>
      _$StringNodeToXmlAttributes(this, namespaces: namespaces);

  List<XmlNode> toXmlChildren({
    Map<String, String?> namespaces = const {},
  }) =>
      _$StringNodeToXmlChildren(this, namespaces: namespaces);

  XmlElement toXmlElement({
    Map<String, String?> namespaces = const {},
  }) =>
      _$StringNodeToXmlElement(this, namespaces: namespaces);
}
