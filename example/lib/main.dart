import 'package:flutter/material.dart';
import 'package:theme_patrol/theme_patrol.dart';
import 'features.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ThemePatrol(
      light: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity, colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red).copyWith(secondary: Colors.red),
      ),
      dark: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.red,
        toggleableActiveColor: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity, colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red).copyWith(secondary: Colors.red),
      ),
      mode: ThemeMode.system,
      builder: (context, theme) {
        return MaterialApp(
          title: 'Smart Select',
          theme: theme.light,
          darkTheme: theme.dark,
          themeMode: theme.mode,
          home: Features(),
        );
      },
    );
  }
}
