import 'package:delivery_app/utils/common_exports.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Categories",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 20),
            const SearchTextBarWidget(
              placeHolder: 'Search',
              icon: Icons.search,
            ),
            const SizedBox(height: 40),
            GridView(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
              ),
              children: [
                ...appController.getCategory.map(
                  (e) => CategoryCardWidget(category: e),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
// const Padding(
//     padding: EdgeInsets.all(16),
//     child: SingleChildScrollView(
//       child: Column(
//         children: [
//           Text(
//             "Categories",
//             style: TextStyle(
//               fontSize: 34,
//               fontWeight: FontWeight.w700,
//             ),
//           ),
//           SearchTextBarWidget(
//             placeHolder: 'Search',
//             icon: Icons.search,
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           // CategoriesScreen(),
//           ProductScreen(),
//         ],
//       ),
//     ),
//   ),
