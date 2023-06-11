// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_node.dart';

// **************************************************************************
// XmlSerializableGenerator
// **************************************************************************

void _$EditNodeBuildXmlChildren(EditNode instance, XmlBuilder builder,
    {Map<String, String> namespaces = const {}}) {
  final name = instance.name;
  final nameSerialized = name != null ? $NameTypeEnumMap[name]! : null;
  if (nameSerialized != null) {
    builder.attribute('name', nameSerialized);
  }
  final mode = instance.mode;
  final modeSerialized = mode != null ? $ModeTypeEnumMap[mode]! : null;
  if (modeSerialized != null) {
    builder.attribute('mode', modeSerialized);
  }
  final binding = instance.binding;
  final bindingSerialized =
      binding != null ? $BindingTypeEnumMap[binding]! : null;
  if (bindingSerialized != null) {
    builder.attribute('binding', bindingSerialized);
  }
  final string = instance.string;
  final stringSerialized = string;
  if (stringSerialized != null) {
    for (final value in stringSerialized) {
      builder.element('string', nest: () {
        value.buildXmlChildren(builder, namespaces: namespaces);
      });
    }
  }
}

void _$EditNodeBuildXmlElement(EditNode instance, XmlBuilder builder,
    {Map<String, String> namespaces = const {}}) {
  builder.element('edit', namespaces: namespaces, nest: () {
    instance.buildXmlChildren(builder, namespaces: namespaces);
  });
}

EditNode _$EditNodeFromXmlElement(XmlElement element) {
  final name = element.getAttribute('name');
  final mode = element.getAttribute('mode');
  final binding = element.getAttribute('binding');
  final string = element.getElements('string');
  return EditNode(
      name: name != null
          ? $NameTypeEnumMap.entries
              .singleWhere(
                  (nameTypeEnumMapEntry) => nameTypeEnumMapEntry.value == name,
                  orElse: () => throw ArgumentError(
                      '`$name` is not one of the supported values: ${$NameTypeEnumMap.values.join(', ')}'))
              .key
          : null,
      mode: mode != null
          ? $ModeTypeEnumMap.entries
              .singleWhere(
                  (modeTypeEnumMapEntry) => modeTypeEnumMapEntry.value == mode,
                  orElse: () => throw ArgumentError(
                      '`$mode` is not one of the supported values: ${$ModeTypeEnumMap.values.join(', ')}'))
              .key
          : null,
      binding: binding != null
          ? $BindingTypeEnumMap.entries
              .singleWhere(
                  (bindingTypeEnumMapEntry) =>
                      bindingTypeEnumMapEntry.value == binding,
                  orElse: () => throw ArgumentError(
                      '`$binding` is not one of the supported values: ${$BindingTypeEnumMap.values.join(', ')}'))
              .key
          : null,
      string: string?.map((e) => StringNode.fromXmlElement(e)).toList());
}

List<XmlAttribute> _$EditNodeToXmlAttributes(EditNode instance,
    {Map<String, String?> namespaces = const {}}) {
  final attributes = <XmlAttribute>[];
  final name = instance.name;
  final nameSerialized = name != null ? $NameTypeEnumMap[name]! : null;
  final nameConstructed = nameSerialized != null
      ? XmlAttribute(XmlName('name'), nameSerialized)
      : null;
  if (nameConstructed != null) {
    attributes.add(nameConstructed);
  }
  final mode = instance.mode;
  final modeSerialized = mode != null ? $ModeTypeEnumMap[mode]! : null;
  final modeConstructed = modeSerialized != null
      ? XmlAttribute(XmlName('mode'), modeSerialized)
      : null;
  if (modeConstructed != null) {
    attributes.add(modeConstructed);
  }
  final binding = instance.binding;
  final bindingSerialized =
      binding != null ? $BindingTypeEnumMap[binding]! : null;
  final bindingConstructed = bindingSerialized != null
      ? XmlAttribute(XmlName('binding'), bindingSerialized)
      : null;
  if (bindingConstructed != null) {
    attributes.add(bindingConstructed);
  }
  return attributes;
}

List<XmlNode> _$EditNodeToXmlChildren(EditNode instance,
    {Map<String, String?> namespaces = const {}}) {
  final children = <XmlNode>[];
  final string = instance.string;
  final stringSerialized = string;
  final stringConstructed = stringSerialized?.map((e) => XmlElement(
      XmlName('string'),
      e.toXmlAttributes(namespaces: namespaces),
      e.toXmlChildren(namespaces: namespaces)));
  if (stringConstructed != null) {
    children.addAll(stringConstructed);
  }
  return children;
}

XmlElement _$EditNodeToXmlElement(EditNode instance,
    {Map<String, String?> namespaces = const {}}) {
  return XmlElement(
      XmlName('edit'),
      [
        ...namespaces.toXmlAttributes(),
        ...instance.toXmlAttributes(namespaces: namespaces)
      ],
      instance.toXmlChildren(namespaces: namespaces));
}
