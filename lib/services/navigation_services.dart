import 'package:delivery_app/utils/common_exports.dart';

class Routes {
  static const String deliveryApp = "/deliveryApp";
}

class NavigationServices {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static BuildContext get context => navigatorKey.currentContext!;

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.deliveryApp:
        return MaterialPageRoute(builder: (_) => const DeliveryApp());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(" No Route defined for ${settings.name} "),
            ),
          ),
        );
    }
  }
}
