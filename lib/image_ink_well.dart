import 'package:flutter/material.dart';

class _ImageInkWell extends StatelessWidget {
  final ImageProvider image;
  final VoidCallback onPressed;

  final double width;
  final double height;
  final Color backgroundColor;
  final Color splashColor;

  final ShapeBorder shape;
  final BorderRadius borderRadius;
  final BoxFit fit;

  _ImageInkWell(
      {Key key,
      @required this.image,
      @required this.onPressed,
      @required this.width,
      @required this.height,
      this.backgroundColor,
      this.splashColor,
      this.shape,
      this.borderRadius,
      this.fit = BoxFit.cover})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        child: FlatButton(
          child: null,
          highlightColor: Colors.transparent,
          splashColor: splashColor,
          shape: shape,
          onPressed: onPressed,
        ),
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: borderRadius,
            shape: (shape is RoundedRectangleBorder && borderRadius == null)
                ? BoxShape.circle
                : BoxShape.rectangle,
            image: DecorationImage(fit: fit, image: image)));
  }
}

class ImageInkWell extends _ImageInkWell {
  ImageInkWell(
      {Key key,
      @required ImageProvider image,
      @required VoidCallback onPressed,
      @required double width,
      @required double height,
      Color backgroundColor,
      Color splashColor,
      BoxFit fit = BoxFit.cover})
      : super(
            key: key,
            image: image,
            onPressed: onPressed,
            width: width,
            height: height,
            backgroundColor: backgroundColor,
            splashColor: splashColor,
            fit: fit);
}

class CircleImageInkWell extends _ImageInkWell {
  CircleImageInkWell(
      {Key key,
      @required ImageProvider image,
      @required VoidCallback onPressed,
      @required double size,
      Color backgroundColor = Colors.white,
      Color splashColor = Colors.black26,
      BoxFit fit = BoxFit.cover})
      : super(
            key: key,
            image: image,
            onPressed: onPressed,
            width: size,
            height: size,
            backgroundColor: backgroundColor,
            splashColor: splashColor,
            fit: fit,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(size / 2)));
}

class RoundedRectangleImageInkWell extends _ImageInkWell {
  RoundedRectangleImageInkWell(
      {Key key,
      @required ImageProvider image,
      @required VoidCallback onPressed,
      @required double width,
      @required double height,
      @required BorderRadius borderRadius,
      Color backgroundColor = Colors.white,
      Color splashColor = Colors.black26,
      BoxFit fit = BoxFit.cover})
      : super(
            key: key,
            image: image,
            onPressed: onPressed,
            width: width,
            height: height,
            backgroundColor: backgroundColor,
            splashColor: splashColor,
            fit: fit,
            borderRadius: borderRadius,
            shape: RoundedRectangleBorder(borderRadius: borderRadius));
}
