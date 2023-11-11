import 'package:delivery_app/utils/common_exports.dart';

class Button extends StatelessWidget {
  final Widget icon;
  final void Function()? onTap;
  final Color? color;
  final double? height;
  final double? width;

  const Button(
      {super.key,
      required this.icon,
      this.onTap,
      this.color,
      this.height,
      this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: height,
        width: width,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
            border: Border.all(
              color: Theme.of(context).highlightColor,
            ),
            color: color,
          ),
          child: icon,
        ),
      ),
    );
  }
}
