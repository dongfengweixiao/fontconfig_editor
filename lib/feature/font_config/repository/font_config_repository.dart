import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fontconfig_editor/common/models/fontconfig_node.dart';
import 'package:fontconfig_editor/common/models/match_node.dart';
import 'package:fontconfig_editor/common/utils/empty_fontconfig.dart';
import 'package:xml/xml.dart';

final fontconfigRepositoryProvider = Provider((ref) {
  return FontconfigRepository();
});

class FontconfigRepository {
  Future<File> _openFontConfigFile() async {
    Map<String, String> envVars = Platform.environment;
    var fontconfigFilePath =
        '${envVars['HOME']}/.config/fontconfig1/fonts.conf';
    File fontconfigFile = File(fontconfigFilePath);
    if (!await fontconfigFile.exists()) {
      await fontconfigFile.create(recursive: true);
      await fontconfigFile.writeAsString(emptyFontconfig);
    }
    return fontconfigFile;
  }

  Future<FontconfigNode> getFontconfigNode() async {
    var fontconfigFile = await _openFontConfigFile();
    var document = XmlDocument.parse(fontconfigFile.readAsStringSync());
    final fontconfig = FontconfigNode.fromXmlElement(document.rootElement);
    return fontconfig;
  }

  List<MatchNode>? getAllMatchNode(FontconfigNode fontconfigNode) {
    return fontconfigNode.matches;
  }
}
