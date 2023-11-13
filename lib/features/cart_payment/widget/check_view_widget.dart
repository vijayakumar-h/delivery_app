import 'package:delivery_app/utils/common_exports.dart';

class CheckoutViewWidget extends StatelessWidget {
  final IconData icon;
  final Widget view;

  const CheckoutViewWidget({
    super.key,
    required this.icon,
    required this.view,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 24,
        ),
        const SizedBox(width: 20),
        view,
      ],
    );
  }
}
