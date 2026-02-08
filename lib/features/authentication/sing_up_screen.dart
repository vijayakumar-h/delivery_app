import 'package:delivery_app/utils/common_exports.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  @override
  Widget build(BuildContext context) {
    bool isVisible = false;
    Widget? visibleIcon() => Icon(
      isVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined,
    );
    final List<Map<String, dynamic>> registerInputList = [
      {
        'title': 'Full Name',
        'placeholder': 'Full Name',
        'controller': TextEditingController(),
        'prefixIcon': Icons.person_outline,
        'keyboardType': TextInputType.text,
        'validator': (String? value) {
          if (value == null || value.isEmpty) {
            return 'Please Enter your Name';
          }
          if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
            return 'Enter a valid Name';
          }
        },
      },
      {
        'title': 'Email',
        'placeholder': 'Email Address',
        'controller': TextEditingController(),
        'prefixIcon': Icons.email_outlined,
        'keyboardType': TextInputType.emailAddress,
        'validator': (String? value) {
          if (value == null || value.isEmpty) {
            return 'Please Enter you Email';
          }
          if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
            return 'Enter a valid email address';
          }
        },
      },
      {
        'title': 'Password',
        'placeholder': 'Password',
        'prefixIcon': Icons.lock_outline,
        'controller': TextEditingController(),
        'suffixIcon': visibleIcon(),
        'keyboardType': TextInputType.text,
        'validator': (String? value) {
          if (value == null || value.isEmpty) {
            return 'Please Enter you Password';
          }
          if (value.length < 6) {
            return 'Password must be at least 6 characters';
          }
        },
      },
      {
        'title': 'Confirm Password',
        'placeholder': 'Confirm Password',
        'prefixIcon': Icons.lock_outline,
        'controller': TextEditingController(),
        'suffixIcon': visibleIcon(),
        'keyboardType': TextInputType.text,
        'validator': (String? value) {
          if (value == null || value.isEmpty) {
            return 'Please Enter you Password';
          }
          if (value.length < 6) {
            return 'Password must be at least 6 characters';
          }
        },
      },
    ];
    return Material(
      child: CustomPaint(
        painter: const WavePainter(showSecondWave: false),
        child: Column(
          children: [
            const SizedBox(height: kToolbarHeight*1.2),
            const LoginAndSignUpScreenTitleWidget(
              title: 'Create Account',
              subTitle: 'Enter Your Personal Data',
            ),
            const SizedBox(height: kToolbarHeight),
            ...registerInputList.map(
              (input) => Padding(
                padding: EdgeInsets.only(
                  bottom: kAppPadding,
                  left: kAppPadding,
                  right: kAppPadding,
                ),
                child: AppTextFromFiled(
                  onTap: () {},
                  title: input['title'] as String?,
                  suffixIcon: input['suffixIcon'] as Widget?,
                  placeholder: input['placeholder'] as String?,
                  keyboardType: input['keyboardType'] as TextInputType?,
                  controller: input['controller'] as TextEditingController?,
                  validator: input['validator'] as String? Function(String?)?,
                  prefixIcon: InkWell(
                    onTap: () {
                      isVisible = !isVisible;
                      setState(() {});
                    },
                    child: (Icon(input['prefixIcon'] as IconData)) as Widget?,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kAppPadding),
              child: PrimaryButton(
                title: 'Create account',
                onTap: () {},
                isExpand: true,
              ),
            ),
            SizedBox(height: kAppPadding),
            const SocialMediaSectionWidget(),
            LoginOptionWidget(
              subTitle: 'Login',
              title: 'I have a Account ?',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
