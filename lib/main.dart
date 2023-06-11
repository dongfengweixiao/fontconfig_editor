import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fontconfig_editor/feature/font_config/pages/font_config_home_page.dart';
import 'package:window_size/window_size.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );

  doWhenWindowReady(
    () async {
      var screenInfo = await getCurrentScreen();
      var scale = screenInfo!.scaleFactor;

      var initialSize = Size(1920 / scale, 1080 / scale);
      appWindow.size = initialSize;
      appWindow.minSize = initialSize;
      appWindow.alignment = Alignment.center;
      appWindow.show();
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1080),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: Row(
              children: [
                LeftSide(),
                RightSide(),
              ],
            ),
          ),
        );
      },
    );
  }
}

var sidebarColor = const Color(0xFFF6A00C);
var backgroundStartColor = const Color(0xFFFFD500);
var backgroundEndColor = const Color(0xFFF6A00C);

class LeftSide extends StatelessWidget {
  const LeftSide({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Container(
        color: sidebarColor,
        child: Column(
          children: [
            WindowTitleBarBox(
              child: MoveWindow(),
            ),
          ],
        ),
      ),
    );
  }
}

class RightSide extends StatelessWidget {
  const RightSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [backgroundStartColor, backgroundEndColor],
            stops: const [0.0, 1.0],
          ),
        ),
        child: Column(
          children: [
            WindowTitleBarBox(
              child: Row(
                children: [
                  Expanded(
                    child: MoveWindow(),
                  ),
                  const WindowButtons(),
                ],
              ),
            ),
            const Expanded(
              child: FontConfigHomePage(),
            ),
          ],
        ),
      ),
    );
  }
}

var buttonColors = WindowButtonColors(
  iconNormal: const Color(0xFF805306),
  mouseOver: const Color(0xFFF6A00C),
  mouseDown: const Color(0xFF805306),
  iconMouseOver: const Color(0xFF805306),
  iconMouseDown: const Color(0xFFFFD500),
);

class WindowButtons extends StatelessWidget {
  const WindowButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MinimizeWindowButton(
          colors: buttonColors,
        ),
        MaximizeWindowButton(
          colors: buttonColors,
        ),
        CloseWindowButton(
          colors: buttonColors,
        ),
      ],
    );
  }
}
