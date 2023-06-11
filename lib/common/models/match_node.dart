import 'package:fontconfig_editor/common/enum/target_type.dart';
import 'package:fontconfig_editor/common/models/edit_node.dart';
import 'package:fontconfig_editor/common/models/test_node.dart';
import 'package:xml/xml.dart';
import 'package:xml_annotation/xml_annotation.dart' as annotation;

part 'match_node.g.dart';

@annotation.XmlRootElement(name: 'match')
@annotation.XmlSerializable()
class MatchNode {
  @annotation.XmlAttribute(name: 'target')
  TargetType? target;

  @annotation.XmlElement(name: 'test')
  List<TestNode>? tests;

  @annotation.XmlElement(name: 'edit')
  List<EditNode>? edits;

  MatchNode({
    this.target,
    this.tests,
    this.edits,
  });

  factory MatchNode.fromXmlElement(XmlElement e) =>
      _$MatchNodeFromXmlElement(e);

  @override
  String toString() {
    return 'Match{target: $target, tests: $tests, edits: $edits}';
  }

  void buildXmlChildren(
    XmlBuilder builder, {
    Map<String, String> namespaces = const {},
  }) =>
      _$MatchNodeBuildXmlChildren(this, builder, namespaces: namespaces);

  void buildXmlElement(
    XmlBuilder builder, {
    Map<String, String> namespaces = const {},
  }) =>
      _$MatchNodeBuildXmlElement(this, builder, namespaces: namespaces);

  List<XmlAttribute> toXmlAttributes({
    Map<String, String?> namespaces = const {},
  }) =>
      _$MatchNodeToXmlAttributes(this, namespaces: namespaces);

  List<XmlNode> toXmlChildren({
    Map<String, String?> namespaces = const {},
  }) =>
      _$MatchNodeToXmlChildren(this, namespaces: namespaces);

  XmlElement toXmlElement({
    Map<String, String?> namespaces = const {},
  }) =>
      _$MatchNodeToXmlElement(this, namespaces: namespaces);
}
