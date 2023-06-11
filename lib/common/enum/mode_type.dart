import 'package:xml_annotation/xml_annotation.dart' as annotation;
part 'mode_type.g.dart';

@annotation.XmlEnum(fieldRename: annotation.FieldRename.none)
enum ModeType {
  assign('assign'),
  @annotation.XmlValue('assign_replace')
  assignReplace('assign_replace'),
  prepend('prepend'),
  @annotation.XmlValue('prepend_first')
  prependFirst('prepend_first'),
  append('append'),
  @annotation.XmlValue('append_last')
  appendLast('append_last'),
  delete('delete'),
  @annotation.XmlValue('delete_all')
  deleteAll('delete_all');

  final String type;

  const ModeType(this.type);
}

extension ConvertModeType on String {
  ModeType toEnum() {
    switch (this) {
      case 'assign':
        return ModeType.assign;
      case 'assign_replace':
        return ModeType.assignReplace;
      case 'prepend_first':
        return ModeType.prependFirst;
      case 'append':
        return ModeType.append;
      case 'append_last':
        return ModeType.appendLast;
      case 'delete':
        return ModeType.delete;
      case 'delete_all':
        return ModeType.deleteAll;
      case 'prepend':
      default:
        return ModeType.prepend;
    }
  }
}
