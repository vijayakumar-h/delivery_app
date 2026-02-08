import 'package:delivery_app/utils/common_exports.dart';

class SocialMediaSectionWidget extends StatelessWidget {
  const SocialMediaSectionWidget({super.key});

  @override
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.symmetric(horizontal: kAppPadding),
    child: Column(
      children: [
        Row(
          children: [
           const  Expanded(child: Divider()),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kAppPadding),
              child: const Text('Continue with'),
            ),
            const Expanded(child: Divider()),
          ],
        ),
        SizedBox(height: kAppPadding),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _SocialMediaIconWidget(icon: Icons.apple, onTap: () {}),
            const SizedBox(width: 30),
            _SocialMediaIconWidget(
              icon: Icons.g_mobiledata_outlined,
              onTap: () {},
            ),
          ],
        ),
        SizedBox(height: kAppPadding),
      ],
    ),
  );
}

class _SocialMediaIconWidget extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _SocialMediaIconWidget({
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: onTap,
    child: CircleAvatar(
      radius: 28,
      backgroundColor: context.primaryColor.withValues(alpha: 0.3),
      child: Icon(icon, size: 32, color: Colors.white),
    ),
  );
}
