import 'package:delivery_app/utils/common_exports.dart';

class PageIndicatorWidget extends StatelessWidget {
  final int length;
  final int currentPage;

  const PageIndicatorWidget({
    super.key,
    required this.length,
    required this.currentPage,
  });

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            length,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: currentPage == index ? 10 : 8,
                width: currentPage == index ? 10 : 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentPage == index ? Colors.white : Colors.grey,
                ),
              ),
            ),
          ),
        ],
      );
}
