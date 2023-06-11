import 'package:xml_annotation/xml_annotation.dart' as annotation;
part 'compare_type.g.dart';

@annotation.XmlEnum()
enum CompareType {
  @annotation.XmlValue('eq')
  equal('eq'),
  @annotation.XmlValue('not_eq')
  notEqual('not_eq'),
  @annotation.XmlValue('less_eq')
  lessEqual('less_eq'),
  more('more'),
  @annotation.XmlValue('more_eq')
  moreEqual('more_eq'),
  contains('contains'),
  @annotation.XmlValue('not_contains')
  notContains('not_contains');

  final String type;

  const CompareType(this.type);
}

extension ConvertCompareType on String {
  CompareType toEnum() {
    switch (this) {
      case 'eq':
        return CompareType.equal;
      case 'not_eq':
        return CompareType.notEqual;
      case 'less_eq':
        return CompareType.lessEqual;
      case 'more':
        return CompareType.more;
      case 'more_eq':
        return CompareType.moreEqual;
      case 'not_contains':
        return CompareType.notContains;
      case 'contains':
      default:
        return CompareType.contains;
    }
  }
}
