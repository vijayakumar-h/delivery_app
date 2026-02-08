import 'package:delivery_app/utils/common_exports.dart';

/// Routes
Route<dynamic> appPageRoute(Widget Function(BuildContext) routes) =>
    MaterialPageRoute(builder: routes);

extension NavigationBuildContextExtension on BuildContext {
  void pop() => Navigator.of(this).pop();

  Future<void> push(Widget child) async =>
      Navigator.push(this, appPageRoute((_) => child));

  Future<void> pushNamed(String routeName, {Object? arguments}) async =>
      Navigator.pushNamed(this, routeName, arguments: arguments);

  Future<void> popAndPushNamed(String routeName, {Object? arguments}) async =>
      Navigator.popAndPushNamed(this, routeName, arguments: arguments);

  Future<void> pushReplacement(Widget child) async =>
      Navigator.pushReplacement(this, appPageRoute((_) => child));

  Future<void> pushReplacementNamed(
    String routeName, {
    Object? arguments,
  }) async =>
      Navigator.pushReplacementNamed(this, routeName, arguments: arguments);

  Future<void> pushAndRemoveUntil(Widget child) async =>
      Navigator.pushAndRemoveUntil(
        this,
        appPageRoute((_) => child),
        (route) => false,
      );

  Future<void> pushNamedAndRemoveUntil(
    String newRouteName,
    Object? arguments,
  ) async => Navigator.pushNamedAndRemoveUntil(
    this,
    newRouteName,
    (route) => false,
    arguments: arguments,
  );

  Color get primaryColor => Theme.of(this).primaryColor;

  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;
}
