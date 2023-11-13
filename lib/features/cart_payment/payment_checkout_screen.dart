import 'package:delivery_app/utils/common_exports.dart';

class PaymentCheckoutScreen extends StatelessWidget {
  const PaymentCheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Checkout",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 0.1,
        backgroundColor: Colors.white,
        toolbarHeight: 80,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            PaymentMethod(),
          ],
        ),
      ),
    );
  }
}
