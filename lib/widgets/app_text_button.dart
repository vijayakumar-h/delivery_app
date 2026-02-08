import 'package:delivery_app/utils/common_exports.dart';

class AppTextButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;

  const AppTextButton({required this.onTap, required this.title, super.key});

  @override
  Widget build(BuildContext context) => TextButton(
    style: const ButtonStyle(
      padding: WidgetStatePropertyAll(EdgeInsets.zero),
      overlayColor: WidgetStatePropertyAll(Colors.transparent),
      visualDensity: VisualDensity(vertical: -4, horizontal: -4),
    ),
    onPressed: onTap,
    child: Text(
      title,
      style: const TextStyle(
        fontSize: 14,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
