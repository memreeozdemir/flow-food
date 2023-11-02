import 'package:flowfood/stores/auth_store.dart';
import 'package:flowfood/stores/root_store.dart';
import 'package:flowfood/stores/theme_store.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt serviceLocator = GetIt.instance;

Future<void> init() async {
  serviceLocator.registerSingleton<RootStore>(RootStore(
    authStore: AuthStore(),
    themeStore: ThemeStore(),
  ));

  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
}