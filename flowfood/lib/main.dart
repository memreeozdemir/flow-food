import 'package:flowfood/stores/root_store.dart';
import "package:flutter/material.dart";
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flowfood/injector.dart' as injector;
import 'package:flowfood/pages/splash_page.dart';
import 'package:flowfood/routes.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await injector.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return MaterialApp(
          title: 'Flow Food',
          theme: ThemeData(
            primaryColor: injector.serviceLocator
                .get<RootStore>()
                .themeStore
                .primaryColor,
            appBarTheme: AppBarTheme(
              backgroundColor: injector.serviceLocator
                  .get<RootStore>()
                  .themeStore
                  .primaryColor,
            ),
          ),
          initialRoute: Routes.splash,
          onGenerateRoute: Routes.generateRoute,
        );
      },
    );
  }
}