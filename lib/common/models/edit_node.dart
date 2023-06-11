import 'package:fontconfig_editor/common/enum/binding_type.dart';
import 'package:fontconfig_editor/common/enum/mode_type.dart';
import 'package:fontconfig_editor/common/enum/name_type.dart';
import 'package:fontconfig_editor/common/models/string_node.dart';
import 'package:xml/xml.dart';
import 'package:xml_annotation/xml_annotation.dart' as annotation;

part 'edit_node.g.dart';

@annotation.XmlRootElement(name: 'edit')
@annotation.XmlSerializable()
class EditNode {
  @annotation.XmlAttribute(name: 'name')
  NameType? name;

  @annotation.XmlAttribute(name: 'mode')
  ModeType? mode;

  @annotation.XmlAttribute(name: 'binding')
  BindingType? binding;

  @annotation.XmlElement(name: 'string')
  List<StringNode>? string;

  EditNode({
    this.name,
    this.mode,
    this.binding,
    this.string,
  });

  factory EditNode.fromXmlElement(XmlElement e) => _$EditNodeFromXmlElement(e);

  @override
  String toString() {
    return 'Edit{name: $name, mode: $mode, binding: $binding, string: $string}';
  }

  void buildXmlChildren(
    XmlBuilder builder, {
    Map<String, String> namespaces = const {},
  }) =>
      _$EditNodeBuildXmlChildren(this, builder, namespaces: namespaces);

  void buildXmlElement(
    XmlBuilder builder, {
    Map<String, String> namespaces = const {},
  }) =>
      _$EditNodeBuildXmlElement(this, builder, namespaces: namespaces);

  List<XmlAttribute> toXmlAttributes({
    Map<String, String?> namespaces = const {},
  }) =>
      _$EditNodeToXmlAttributes(this, namespaces: namespaces);

  List<XmlNode> toXmlChildren({
    Map<String, String?> namespaces = const {},
  }) =>
      _$EditNodeToXmlChildren(this, namespaces: namespaces);

  XmlElement toXmlElement({
    Map<String, String?> namespaces = const {},
  }) =>
      _$EditNodeToXmlElement(this, namespaces: namespaces);
}
