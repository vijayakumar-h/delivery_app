import 'package:delivery_app/utils/common_exports.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Vegetables",
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
              const SizedBox(height: 20),
            ...appController.getProduct.map(
            (e) => ProductCardWidget(product: e),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
