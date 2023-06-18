import 'package:flutter/material.dart';

class RectangleTabIndicator extends Decoration {
  final BoxPainter _painter;

  RectangleTabIndicator(
      {required Color color,
      required double width,
      required double height,
      required double radius})
      : _painter = _RectanglePainter(color, width, height, radius);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _painter;
  }
}

class _RectanglePainter extends BoxPainter {
  final Paint _paint;
  final double width;
  final double height;
  final double radius;

  _RectanglePainter(Color color, this.width, this.height, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final double offsetX = (cfg.size!.width - width) / 2;
    final Rect rect = Rect.fromLTWH(
      offset.dx + offsetX,
      offset.dy + cfg.size!.height - height - 5,
      width,
      height,
    );
    final RRect roundedRect = RRect.fromRectAndCorners(
      rect,
      topLeft: Radius.circular(radius),
      topRight: Radius.circular(radius),
    );

    canvas.drawRRect(roundedRect, _paint);
  }
}