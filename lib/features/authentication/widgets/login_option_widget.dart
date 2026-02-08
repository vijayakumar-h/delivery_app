import 'package:delivery_app/utils/common_exports.dart';

class LoginOptionWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final VoidCallback onTap;

  const LoginOptionWidget({
    required this.title,
    required this.onTap,
    required this.subTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
      const SizedBox(width: 4),
      GestureDetector(
        onTap: onTap,
        child: Text(
          subTitle,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: context.primaryColor,
          ),
        ),
      ),
    ],
  );
}
