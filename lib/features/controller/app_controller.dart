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
    Category(
      2,
      AppIcons.fruits,
      "Fruits",
      "(21)",
    ),
    Category(
      3,
      AppIcons.bread,
      "Bread",
      "(22)",
    ),
    Category(
      4,
      AppIcons.sweets,
      "Sweets",
      "(23)",
    ),
    Category(
      5,
      AppIcons.pasta,
      "Pasta",
      "(24)",
    ),
    Category(
      6,
      AppIcons.drinks,
      "Drinks",
      "(25)",
    ),
  };
}
