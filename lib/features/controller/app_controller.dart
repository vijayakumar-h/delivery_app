import 'package:delivery_app/utils/common_exports.dart';

class AppController with _CategoryControllerMixin {
  factory AppController() => _singleton;
  static final AppController _singleton = AppController._internal();

  AppController._internal();
}

mixin _CategoryControllerMixin {
  Set<Category> getCategory = {
    Category(
      1,
      AppIcons.vegetables,
      "Vegetables",
      "(20)",
    ),
  };
}
