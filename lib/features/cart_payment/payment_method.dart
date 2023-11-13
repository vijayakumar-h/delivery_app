import 'package:delivery_app/utils/common_exports.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const CheckoutTitleWidget(
          title: "Payment Method",
          buttonTitle: 'Change',
        ),
        const SizedBox(height: 16),
        CheckoutViewWidget(
          icon: Icons.credit_card_rounded,
          view: Text(
            "**** **** **** 4747",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).primaryColorDark,
            ),
          ),
        ),
      ],
    );
  }
}
