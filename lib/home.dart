import 'package:delivery_app/utils/common_exports.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) => Scaffold(
        bottomNavigationBar: const AppBottomNavigationBar(),
        body: ValueListenableBuilder(
          valueListenable: appController.currentIndex,
          builder: (_, index, __) => [
            const CategoriesScreen(),
            const PaymentCheckoutScreen(),
            const SizedBox.shrink(),
          ][index],
        ),
      );
}
