import 'package:delivery_app/app_bottom_navigation_bar.dart';
import 'package:delivery_app/utils/common_exports.dart';

final appController = AppController();

class DeliveryApp extends StatefulWidget {
  const DeliveryApp({super.key});

  @override
  State<DeliveryApp> createState() => _DeliveryAppState();
}

class _DeliveryAppState extends State<DeliveryApp> {
  @override
  void initState() {
    // SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => const SplashScreen(),
    //     ),
    //   );
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(automaticallyImplyLeading: true),
        bottomNavigationBar: const AppBottomNavigationBar(),
        body: ValueListenableBuilder(
          valueListenable: appController.currentIndex,
          builder: (_, index, __) => [
            const CategoriesScreen(),
            const SizedBox.shrink(),
            const SizedBox.shrink(),
          ][index],
        ),
      ),
    );
  }
}
