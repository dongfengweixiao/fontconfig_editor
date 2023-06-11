import 'package:xml_annotation/xml_annotation.dart' as annotation;
part 'target_type.g.dart';

@annotation.XmlEnum(fieldRename: annotation.FieldRename.none)
enum TargetType {
  pattern('pattern'),
  font('font'),
  scan('scan'),
  @annotation.XmlValue('default')
  default_('default');

  final String type;

  const TargetType(this.type);
}

extension ConvertTargetType on String {
  TargetType toEnum() {
    switch (this) {
      case 'pattern':
        return TargetType.pattern;
      case 'font':
        return TargetType.font;
      case 'scan':
        return TargetType.scan;
      case 'default':
      default:
        return TargetType.default_;
    }
  }
}
