import 'package:e_kitabo/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'routes/router.dart';
import 'theme/custom_theme.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Monitor',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
      theme: CustomTheme.light(),
      darkTheme: CustomTheme.dark(),
      home: const LoginPage(),
    );
  }
}
