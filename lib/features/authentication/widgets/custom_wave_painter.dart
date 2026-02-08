import 'package:delivery_app/utils/common_exports.dart';

class WavePainter extends CustomPainter {
  final bool showSecondWave;

  const WavePainter({this.showSecondWave = true});

  @override
  void paint(Canvas canvas, Size size) {
    final Path path = Path();
    final Paint paint = Paint();

    final List<Color> colors = [
      Colors.teal.shade700,
      Colors.tealAccent.shade100,
      Colors.teal.shade400,
    ];
    final List<Color> colors2 = [
      Colors.teal.shade400,
      Colors.tealAccent.shade100,
      Colors.teal.shade400,
    ];

    final Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    paint.shader = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: colors,
    ).createShader(rect);

    path
      ..moveTo(0, size.height * 0.23)
      ..quadraticBezierTo(
        size.width * 0.24,
        size.height * 0.12,
        size.width * 0.65,
        size.height * 0.2,
      )
      ..quadraticBezierTo(
        size.width * 0.88,
        size.height * 0.25,
        size.width,
        size.height * 0.23,
      )
      ..lineTo(size.width, 0)
      ..lineTo(0, 0)
      ..close();

    canvas.drawPath(path, paint);

    if (showSecondWave) {
      final Path path2 = Path();
      final Paint paint2 =
          Paint()
            ..shader = LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: colors2,
            ).createShader(rect);

      path2
        ..moveTo(0, size.height * 0.35)
        ..quadraticBezierTo(
          size.width * 0.25,
          size.height * 0.12,
          size.width * 0.65,
          size.height * 0.2,
        )
        ..quadraticBezierTo(
          size.width * 0.88,
          size.height * 0.3,
          size.width,
          size.height * 0.3,
        )
        ..lineTo(size.width, size.height)
        ..lineTo(0, size.height)
        ..close();
      canvas.drawPath(path2, paint2);
    }
  }

  @override
  bool shouldRepaint(covariant WavePainter oldDelegate) => false;
}
