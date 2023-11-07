
import 'package:delivery_app/utils/common_exports.dart';

void main() {
  runApp(const Delivery());
}

class Delivery extends StatelessWidget {
  const Delivery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.deliveryApp,
      navigatorKey: NavigationServices.navigatorKey,
      onGenerateRoute: NavigationServices.generateRoute,
    );
  }
}
