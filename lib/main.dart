import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_changer_using_provider_in_flutter/theme_provider.dart';
import 'package:theme_changer_using_provider_in_flutter/views/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
          builder: (context, ThemeNotifier themeNotifier, child) {
        return MaterialApp(
          title: 'Flutter Theme Provider',
          theme: themeNotifier.darkTheme ? dark : light,
          home: const SplashScreen(),
        );
      }),
    );
  }
}
