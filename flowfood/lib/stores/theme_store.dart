import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'theme_store.g.dart';

class ThemeStore = _ThemeStore with _$ThemeStore;

abstract class _ThemeStore with Store {
  @observable
  Color primaryColor = Colors.blue;
  ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
  );
  @action
  void changePrimaryColor(Color _color) {
    primaryColor = _color;
  }
}