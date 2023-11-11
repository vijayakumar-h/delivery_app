import 'package:delivery_app/utils/common_exports.dart';

final appController = AppController();

class DeliveryApp extends StatefulWidget {
  const DeliveryApp({super.key});

  @override
  State<DeliveryApp> createState() => _DeliveryAppState();
}

class _DeliveryAppState extends State<DeliveryApp> {
  @override
  void initState() {
    // SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => const SplashScreen(),
    //     ),
    //   );
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Categories",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SearchTextBarWidget(
                placeHolder: 'Search',
                icon: Icons.search,
              ),
              SizedBox(
                height: 20,
              ),
              CategoriesScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
