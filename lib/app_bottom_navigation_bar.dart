import 'package:delivery_app/utils/common_exports.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: appController.currentIndex,
      builder: (_, index, __) => BottomNavigationBar(
        currentIndex: index,
        selectedItemColor: Theme.of(context).shadowColor,
        unselectedItemColor: Colors.grey,
        onTap: (value) => appController.currentIndex.value = value,
        items: [
          BottomNavigationBarItem(
              label: "Home",
              icon: const Icon(Icons.apps_outlined),
              activeIcon: Icon(Icons.apps_outlined,
                  color: Theme.of(context).shadowColor)),
          BottomNavigationBarItem(
              label: "Payment",
              icon: const Icon(Icons.shopping_cart_rounded),
              activeIcon: Icon(Icons.shopping_cart_rounded,
                  color: Theme.of(context).shadowColor)),
          BottomNavigationBarItem(
              label: "Profile",
              icon: const Icon(Icons.person_2_rounded),
              activeIcon: Icon(Icons.person_2_outlined,
                  color: Theme.of(context).shadowColor)),
        ],
      ),
    );
  }
}
