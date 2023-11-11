import 'package:delivery_app/utils/common_exports.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
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
    );
  }
}
