import 'package:fontconfig_editor/common/enum/compare_type.dart';
import 'package:fontconfig_editor/common/enum/name_type.dart';
import 'package:fontconfig_editor/common/models/string_node.dart';
import 'package:xml/xml.dart';
import 'package:xml_annotation/xml_annotation.dart' as annotation;

part 'test_node.g.dart';

@annotation.XmlRootElement(name: 'test')
@annotation.XmlSerializable()
class TestNode {
  @annotation.XmlAttribute(name: 'compare')
  CompareType? compare;

  @annotation.XmlAttribute(name: 'name')
  NameType? name;

  @annotation.XmlElement(name: 'string')
  StringNode? string;

  TestNode({
    this.compare,
    this.name,
    this.string,
  });

  factory TestNode.fromXmlElement(XmlElement e) => _$TestNodeFromXmlElement(e);

  @override
  String toString() {
    return 'Test{name: $name, compare: $compare, string: $string}';
  }

  void buildXmlChildren(
    XmlBuilder builder, {
    Map<String, String> namespaces = const {},
  }) =>
      _$TestNodeBuildXmlChildren(this, builder, namespaces: namespaces);

  void buildXmlElement(
    XmlBuilder builder, {
    Map<String, String> namespaces = const {},
  }) =>
      _$TestNodeBuildXmlElement(this, builder, namespaces: namespaces);

  List<XmlAttribute> toXmlAttributes({
    Map<String, String?> namespaces = const {},
  }) =>
      _$TestNodeToXmlAttributes(this, namespaces: namespaces);

  List<XmlNode> toXmlChildren({
    Map<String, String?> namespaces = const {},
  }) =>
      _$TestNodeToXmlChildren(this, namespaces: namespaces);

  XmlElement toXmlElement({
    Map<String, String?> namespaces = const {},
  }) =>
      _$TestNodeToXmlElement(this, namespaces: namespaces);
}
