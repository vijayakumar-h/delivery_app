import 'package:delivery_app/utils/common_exports.dart';

class ProductCardWidget extends StatelessWidget {
  final Product product;

  const ProductCardWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          SizedBox(
            height: 128,
            width: MediaQuery.of(context).size.width / 2.3,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
                border: Border.all(
                  color: Theme.of(context).highlightColor,
                ),
                color: Theme.of(context).primaryColorDark.withOpacity(0.3),
              ),
              child: Image.asset(
                product.productImage,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(width: 12),
          SizedBox(
            height: 128,
            width: MediaQuery.of(context).size.width / 2.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.productName,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Text("${product.price} € / Kg"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Button(
                      height: 42,
                      width: 80,
                      icon: Icon(
                        Icons.favorite_border_outlined,
                      ),
                      color: Colors.transparent,
                    ),
                    Button(
                      height: 42,
                      width: 80,
                      icon: const Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                      ),
                      color: Theme.of(context).cardColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
