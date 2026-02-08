import 'package:delivery_app/utils/common_exports.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Material(
    child: CustomPaint(
      painter: const WavePainter(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kAppPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: kAppPadding * 2),
            Image.asset('assets/images/welcome.png', height: 280),
            SizedBox(height: kAppPadding),
            const Text(
              'Welcome to Your App',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: kAppPadding),
            const Text(
              'Experience seamless \n beautiful design',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: kAppPadding * 2),
            PrimaryButton(
              isExpand: true,
              title: 'Sign Up',
              onTap: () => context.push(const SingUpScreen()),
            ),
            SizedBox(height: kAppPadding),
            SecondaryButton(
              isExpand: true,
              title: 'Login',
              onTap: () {
                context.push(const LoginScreen());
              },
            ),
          ],
        ),
      ),
    ),
  );
}
