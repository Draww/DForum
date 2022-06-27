import 'package:dforum/routes.dart';
import 'package:dforum/theme.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'DForum',
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.light,
      routeInformationProvider: kRoutes.routeInformationProvider,
      routeInformationParser: kRoutes.routeInformationParser,
      routerDelegate: kRoutes.routerDelegate,
    );
  }
}
