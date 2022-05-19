import 'package:e_kitabo/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'routes/router.dart';
import 'theme/custom_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
     SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: CustomTheme.isDarkModeOn() ? Brightness.light : Brightness.dark ,
    ),
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
