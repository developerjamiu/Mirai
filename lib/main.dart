import 'package:flutter/material.dart';

import 'core/themes/app_theme.dart';
import 'features/presentation/pages/login_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mirai',
      theme: AppTheme.lightThemeData,
      darkTheme: AppTheme.darkThemeData,
      home: LoginPage(),
    );
  }
}
