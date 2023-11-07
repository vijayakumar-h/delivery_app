import 'package:delivery_app/utils/common_exports.dart';

class AppTheme {
  factory AppTheme() => _singleton;

  static final AppTheme _singleton = AppTheme._internal();

  AppTheme._internal();

  static const Color _primaryColor = Color(0XFF2D0C57);
  static const Color _secondaryColor = Color(0XFF9586A8);
  static const Color _selectedBackgroundViolet = Color(0XFFE2CBFF);
  static const Color _border = Color(0XFFD9D0E3);
  static const Color _background = Color(0XFFF6F5F5);
  static const Color _selectedViolet = Color(0XFF7203FF);
  static const Color _primaryButton = Color(0XFF0BCE83);
  static const Color _green = Color(0XFFCBF265);
  static const Color _white = Color(0XFFFFFFFF);

  ThemeData get light => ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: _primaryColor,
          ),
        ),
      );
}
