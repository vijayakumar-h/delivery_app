
import 'package:delivery_app/utils/app_theme.dart';
import 'package:delivery_app/utils/common_exports.dart';

void main() {
  runApp(const Delivery());
}

class Delivery extends StatelessWidget {
  const Delivery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme().light,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.deliveryApp,
      navigatorKey: NavigationServices.navigatorKey,
      onGenerateRoute: NavigationServices.generateRoute,
    );
  }
}
