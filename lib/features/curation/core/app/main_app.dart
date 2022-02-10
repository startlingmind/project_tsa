import 'package:flutter/material.dart';
import 'package:understandingbetter/features/curation/core/theme/theme.dart';
import 'package:understandingbetter/features/curation/presentation/pages/home_page.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Understanding Better',
      themeMode: ThemeMode.system,
      theme: ThemeClass.lightTheme,
      // darkTheme: ThemeClass.darkTheme,
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
