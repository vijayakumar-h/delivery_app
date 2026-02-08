import 'package:delivery_app/utils/common_exports.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    bool isVisible = false;
    Widget? visibleIcon() => Icon(
          isVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined,
        );
    final List<Map<String, dynamic>> loginInputList = [
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
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Material(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: kToolbarHeight),
            ...loginInputList.map(
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
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(right: kAppPadding),
                child: AppTextButton(title: 'Forgot Password?', onTap: () {}),
              ),
            ),
            SizedBox(height: kAppPadding),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kAppPadding),
              child: PrimaryButton(
                title: 'Sign in',
                onTap: () => context.push(
                  Home(),
                ),
              ),
            ),
            SizedBox(height: kAppPadding),
            const SocialMediaSectionWidget(),
            LoginOptionWidget(
              subTitle: 'Sing Up',
              title: 'Don\'t have an Account ?',
              onTap: () => context.push(SingUpScreen()),
            ),
          ],
        ),
      ),
    );
  }
}
