import 'package:delivery_app/utils/common_exports.dart';

class AppTextFromFiled extends StatefulWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? title;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? placeholder;
  final String? Function(String?)? validator;
  final VoidCallback? onTap;

  const AppTextFromFiled({
    this.title,
    this.onTap,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
    this.placeholder,
    this.keyboardType,
    this.obscureText = false,
    super.key,
  });

  @override
  State<AppTextFromFiled> createState() => _AppTextFromFiledState();
}

class _AppTextFromFiledState extends State<AppTextFromFiled> {
  final FocusNode focusNode = FocusNode();
  bool isAnimateLineFocused = false;

  @override
  void initState() {
    super.initState();
    focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    focusNode
      ..removeListener(_onFocusChange)
      ..dispose();
    super.dispose();
  }

  void _onFocusChange() {
    setState(() {
      isAnimateLineFocused = focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) => Stack(
    alignment: Alignment.bottomCenter,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.title != null) ...{
            Text(
              widget.title!,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          },
          const SizedBox(height: 8),
          TextFormField(
            onTap: widget.onTap,
            focusNode: focusNode,
            validator: widget.validator,
            controller: widget.controller,
            obscureText: widget.obscureText,
            keyboardType: widget.keyboardType ?? TextInputType.text,
            decoration: InputDecoration(
              filled: true,
              fillColor: context.primaryColor.withValues(alpha: 0.1),
              hintText: widget.placeholder,
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.suffixIcon,
              contentPadding: EdgeInsets.all(kAppPadding),
              border: const UnderlineInputBorder(borderSide: BorderSide.none),
              enabledBorder: const UnderlineInputBorder(borderSide: BorderSide.none),
              focusedBorder: const UnderlineInputBorder(borderSide: BorderSide.none),
            ),
          ),
        ],
      ),
      AnimatedContainer(
        curve: Curves.easeInCubic,
        duration: const Duration(milliseconds: 500),
        height: isAnimateLineFocused ? 1.5 : 0.0,
        width: isAnimateLineFocused ? context.width : 0.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.zero,
          color: isAnimateLineFocused ? context.primaryColor : null,
        ),
      ),
    ],
  );
}
