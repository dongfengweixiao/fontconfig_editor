import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fontconfig_editor/common/models/fontconfig_node.dart';
import 'package:fontconfig_editor/common/models/match_node.dart';
import 'package:fontconfig_editor/feature/font_config/repository/font_config_repository.dart';

class FontConfigController {
  final FontconfigRepository fontconfigRepository;
  final ProviderRef ref;

  FontConfigController({
    required this.fontconfigRepository,
    required this.ref,
  });

  Future<FontconfigNode> getFontconfigNode() async {
    return fontconfigRepository.getFontconfigNode();
  }

  List<MatchNode>? getAllMatchNode(FontconfigNode fontconfigNode) {
    return fontconfigRepository.getAllMatchNode(fontconfigNode);
  }
}
