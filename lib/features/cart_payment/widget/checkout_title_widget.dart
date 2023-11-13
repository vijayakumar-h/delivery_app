import 'package:delivery_app/utils/common_exports.dart';

class CheckoutTitleWidget extends StatelessWidget {
  final String title;
  final String buttonTitle;
  final void Function()? onTap;

  const CheckoutTitleWidget({
    super.key,
    required this.title,
    required this.buttonTitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        TextButton(
            onPressed: onTap,
            child: Text(
              buttonTitle,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).shadowColor,
              ),
            ))
      ],
    );
  }
}