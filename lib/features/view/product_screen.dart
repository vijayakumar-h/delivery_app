import 'package:delivery_app/utils/common_exports.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...appController.getProduct.map(
          (e) => ProductCardWidget(product: e),
        ),
      ],
    );
  }
}
