import 'package:delivery_app/utils/common_exports.dart';

class DeliveryApp extends StatelessWidget {
  const DeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          Text("Test",style: TextStyle(color: Colors.red),),
          Icon(Icons.account_circle_outlined),
        ],
      ),
    );
  }
}
