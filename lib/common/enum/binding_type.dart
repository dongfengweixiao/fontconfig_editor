import 'package:xml_annotation/xml_annotation.dart' as annotation;
part 'binding_type.g.dart';

@annotation.XmlEnum()
enum BindingType {
  strong('strong'),
  weak('weak'),
  same('same');

  final String type;

  const BindingType(this.type);
}

extension ConvertBindingType on String {
  BindingType toEnum() {
    switch (this) {
      case 'weak':
        return BindingType.weak;
      case 'same':
        return BindingType.same;
      case 'strong':
      default:
        return BindingType.strong;
    }
  }
}
