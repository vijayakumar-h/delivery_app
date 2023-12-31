import 'package:delivery_app/utils/common_exports.dart';

class SearchTextBarWidget extends StatelessWidget {
  final IconData? icon;
  final String placeHolder;

  const SearchTextBarWidget({
    super.key,
    this.icon,
    required this.placeHolder,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(28),
            ),
          ),
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(28),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(28),
            ),
          ),
          hintText: placeHolder,
          hintStyle: const TextStyle(fontSize: 16),
          prefixIcon: Icon(
            icon,
            size: 24,
          ),
        ),
      ),
    );
  }
}
