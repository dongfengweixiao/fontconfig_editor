import 'package:xml_annotation/xml_annotation.dart' as annotation;
part 'name_type.g.dart';

@annotation.XmlEnum(fieldRename: annotation.FieldRename.none)
enum NameType {
  family('family'),
  familylang('familylang'),
  style('style'),
  stylelang('stylelang'),
  fullname('fullname'),
  fullnamelang('fullnamelang'),
  slant('slant'),
  weight('weight'),
  size('size'),
  width('width'),
  aspect('aspect'),
  pixelsize('pixelsize'),
  spacing('spacing'),
  foundry('foundry'),
  antialias('antialias'),
  hinting('hinting'),
  hintstyle('hintstyle'),
  verticallayout('verticallayout'),
  autohint('autohint'),
  globaladvance('globaladvance'),
  file('file'),
  @annotation.XmlValue('index')
  index_('index'),
  ftface('ftface'),
  rasterizer('rasterizer'),
  outline('outline'),
  scalable('scalable'),
  color('color'),
  scale('scale'),
  dpi('dpi'),
  rgba('rgba'),
  lcdfilter('lcdfilter'),
  minspace('minspace'),
  charset('charset'),
  lang('lang'),
  fontversion('fontversion'),
  capability('capability'),
  fontformat('fontformat'),
  embolden('embolden'),
  embeddedbitmap('embeddedbitmap'),
  decorative('decorative'),
  fontfeatures('fontfeatures'),
  namelang('namelang'),
  prgname('prgname'),
  postscriptname('postscriptname'),
  fonthashint('fonthashint'),
  order('order');

  final String type;

  const NameType(this.type);
}

extension ConvertNameType on String {
  NameType toEnum() {
    switch (this) {
      case 'familylang':
        return NameType.familylang;
      case 'style':
        return NameType.style;
      case 'stylelang':
        return NameType.stylelang;
      case 'fullname':
        return NameType.fullname;
      case 'fullnamelang':
        return NameType.fullnamelang;
      case 'slant':
        return NameType.slant;
      case 'weight':
        return NameType.weight;
      case 'size':
        return NameType.size;
      case 'width':
        return NameType.width;
      case 'aspect':
        return NameType.aspect;
      case 'pixelsize':
        return NameType.pixelsize;
      case 'spacing':
        return NameType.spacing;
      case 'foundry':
        return NameType.foundry;
      case 'antialias':
        return NameType.antialias;
      case 'hinting':
        return NameType.hinting;
      case 'hintstyle':
        return NameType.hintstyle;
      case 'verticallayout':
        return NameType.verticallayout;
      case 'autohint':
        return NameType.autohint;
      case 'globaladvance':
        return NameType.globaladvance;
      case 'file':
        return NameType.file;
      case 'index':
        return NameType.index_;
      case 'ftface':
        return NameType.ftface;
      case 'rasterizer':
        return NameType.rasterizer;
      case 'outline':
        return NameType.outline;
      case 'scalable':
        return NameType.scalable;
      case 'color':
        return NameType.color;
      case 'scale':
        return NameType.scale;
      case 'dpi':
        return NameType.dpi;
      case 'rgba':
        return NameType.rgba;
      case 'lcdfilter':
        return NameType.lcdfilter;
      case 'minspace':
        return NameType.minspace;
      case 'charset':
        return NameType.charset;
      case 'lang':
        return NameType.lang;
      case 'fontversion':
        return NameType.fontversion;
      case 'capability':
        return NameType.capability;
      case 'fontformat':
        return NameType.fontformat;
      case 'embolden':
        return NameType.embolden;
      case 'embeddedbitmap':
        return NameType.embeddedbitmap;
      case 'decorative':
        return NameType.decorative;
      case 'fontfeatures':
        return NameType.fontfeatures;
      case 'namelang':
        return NameType.namelang;
      case 'prgname':
        return NameType.prgname;
      case 'postscriptname':
        return NameType.postscriptname;
      case 'fonthashint':
        return NameType.fonthashint;
      case 'order':
        return NameType.order;
      case 'family':
      default:
        return NameType.family;
    }
  }
}
