import 'package:fontconfig_editor/common/models/match_node.dart';
import 'package:xml/xml.dart';
import 'package:xml_annotation/xml_annotation.dart' as annotation;

part 'fontconfig_node.g.dart';

@annotation.XmlRootElement(name: 'fontconfig')
@annotation.XmlSerializable()
class FontconfigNode {
  @annotation.XmlElement(name: 'match')
  List<MatchNode>? matches;

  FontconfigNode({
    this.matches,
  });

  factory FontconfigNode.fromXmlElement(XmlElement e) =>
      _$FontconfigNodeFromXmlElement(e);

  @override
  String toString() {
    return 'Fontconfig{matches: $matches}';
  }

  void buildXmlChildren(
    XmlBuilder builder, {
    Map<String, String> namespaces = const {},
  }) =>
      _$FontconfigNodeBuildXmlChildren(this, builder, namespaces: namespaces);

  void buildXmlElement(
    XmlBuilder builder, {
    Map<String, String> namespaces = const {},
  }) =>
      _$FontconfigNodeBuildXmlElement(this, builder, namespaces: namespaces);

  List<XmlAttribute> toXmlAttributes({
    Map<String, String?> namespaces = const {},
  }) =>
      _$FontconfigNodeToXmlAttributes(this, namespaces: namespaces);

  List<XmlNode> toXmlChildren({
    Map<String, String?> namespaces = const {},
  }) =>
      _$FontconfigNodeToXmlChildren(this, namespaces: namespaces);

  XmlElement toXmlElement({
    Map<String, String?> namespaces = const {},
  }) =>
      _$FontconfigNodeToXmlElement(this, namespaces: namespaces);
}
