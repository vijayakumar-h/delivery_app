import 'package:delivery_app/utils/common_exports.dart';

class LoginAndSignUpScreenTitleWidget extends StatelessWidget {
  final String title;
  final String subTitle;

  const LoginAndSignUpScreenTitleWidget({
    required this.subTitle,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      IconButton(
        alignment: Alignment.topLeft,
        onPressed: () => context.pop(),
        icon: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white),
      ),
      SizedBox(width: kAppPadding * 1.5),
      Align(
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            Text(
              subTitle,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    ],
  );
}
