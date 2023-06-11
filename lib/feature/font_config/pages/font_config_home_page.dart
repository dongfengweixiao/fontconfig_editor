import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fontconfig_editor/common/widgets/custom_icon_button.dart';
import 'package:fontconfig_editor/feature/font_config/controllers/font_config_controller.dart';
import 'package:fontconfig_editor/feature/font_config/pages/font_config_alias_page.dart';
import 'package:fontconfig_editor/feature/font_config/pages/font_config_match_page.dart';
import 'package:fontconfig_editor/feature/font_config/pages/font_config_option_page.dart';
import 'package:fontconfig_editor/feature/font_config/repository/font_config_repository.dart';

final fontconfigControllerProvider = Provider((ref) {
  final fontconfigRepository = ref.watch(fontconfigRepositoryProvider);
  return FontConfigController(
    fontconfigRepository: fontconfigRepository,
    ref: ref,
  );
});

class FontConfigHomePage extends ConsumerStatefulWidget {
  const FontConfigHomePage({super.key});

  @override
  ConsumerState<FontConfigHomePage> createState() => _FontConfigHomePageState();
}

class _FontConfigHomePageState extends ConsumerState<FontConfigHomePage> {
  void retrieveFontconfigRootNode() async {
    var result = ref.read(fontconfigControllerProvider).getFontconfigNode();
    print(await result);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Font Config Editor'),
          actions: [
            CustomIconButton(
                onPressed: retrieveFontconfigRootNode, icon: Icons.file_open),
            CustomIconButton(onPressed: () {}, icon: Icons.save),
            CustomIconButton(onPressed: () {}, icon: Icons.more_vert),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Font Match'),
              Tab(text: 'Font alias'),
              Tab(text: 'Font option'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            FontConfigMatchPage(),
            FontConfigAliasPage(),
            FontConfigOptionPage(),
          ],
        ),
      ),
    );
  }
}
