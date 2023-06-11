import 'package:flutter/material.dart';
import 'package:fontconfig_editor/common/widgets/custom_elevated_button.dart';

class FontConfigMatchPage extends StatelessWidget {
  const FontConfigMatchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              const SizedBox(
                child: Text('Match rule list'),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 15,
                    itemBuilder: (_, index) {
                      return Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.amber,
                        child: const SizedBox(height: 10),
                      );
                    }),
              ),
              Row(
                children: [
                  CustomElevatedButton(
                    onPressed: () {},
                    text: 'NEW',
                    buttonWidth: 100,
                  ),
                  CustomElevatedButton(
                    onPressed: () {},
                    text: 'NEW',
                    buttonWidth: 100,
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              const SizedBox(
                child: Text('Font list'),
              ),
              const Expanded(child: Text('Font 列表')),
              Row(
                children: [
                  TextButton(onPressed: () {}, child: const Text('上移')),
                  TextButton(onPressed: () {}, child: const Text('下移')),
                  TextButton(onPressed: () {}, child: const Text('添加')),
                  TextButton(onPressed: () {}, child: const Text('移除')),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
