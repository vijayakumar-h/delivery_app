import 'package:delivery_app/utils/common_exports.dart';

class ProductViewScreen extends StatelessWidget {
  final Product product;

  const ProductViewScreen({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    ValueNotifier<int> currentPage = ValueNotifier<int>(0);
    final List<dynamic> icon = [
      "assets/images/carrot.png",
      "assets/images/carrot.png",
      "assets/images/carrot.png",
    ];
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      child: Stack(
        children: [
          Positioned(
            top: 60,
            left: 16,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              ),
            ),
          ),
          ValueListenableBuilder(
            valueListenable: currentPage,
            builder: (context, newValue, child) {
              return Stack(
                children: [
                  SizedBox(
                    height: 320,
                    child: PageView.builder(
                      controller: pageController,
                      itemCount: icon.length,
                      itemBuilder: (context, index) {
                        return DecoratedBox(
                          decoration: BoxDecoration(
                            color: Theme.of(context)
                                .primaryColorDark
                                .withOpacity(0.3),
                          ),
                          child: Image.asset(icon[index]),
                        );
                      },
                    ),
                  ),
                  if (currentPage.value < icon.length - 1) ...{
                    Positioned(
                      top: 280,
                      left: 160,
                      child: PageIndicatorWidget(
                        length: icon.length,
                        currentPage: currentPage.value,
                      ),
                    ),
                  }
                ],
              );
            },
          ),
          Positioned(
            top: 300,
            child: SizedBox(
              width: 392,
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      Text(
                        product.productName,
                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "${product.price} EU/ Kg",
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Spain",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Lettuce is an annual plant of the daisy family, "
                        "Asteraceae. It is most often grown as a leaf vegetable, "
                        "but sometimes for its stem and seeds. "
                        "Lettuce is most often used for salads, "
                        "although it is also seen in other kinds of food, "
                        "such as soups, sandwiches and wraps; it can also be grilled.",
                        style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).primaryColorDark,
                          height: 1.6,
                        ),
                      ),
                      const SizedBox(height: 60),
                      Row(
                        children: [
                          const Button(
                            height: 56,
                            width: 80,
                            icon: Icon(
                              Icons.favorite_border_outlined,
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: SizedBox(
                              height: 52,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Theme.of(context).cardColor,
                                ),
                                child: const Text("Add TO CART"),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 106),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
