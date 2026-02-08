import 'package:delivery_app/utils/common_exports.dart';

Gradient get gradient => LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Colors.tealAccent.shade400.withValues(alpha: 0.2),
    Colors.tealAccent.shade200.withValues(alpha: 0.5),
    Colors.tealAccent.shade400.withValues(alpha: 0.7),
  ],
  stops: const [0.1, 0.5, 1.0],
);

double get kAppPadding => 16.0;
double get kAppBorderRadius => 8.0;