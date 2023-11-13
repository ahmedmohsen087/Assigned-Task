import 'package:flutter/material.dart';

class ShapeContainer extends StatelessWidget {
  const ShapeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SlopingContainer(),
      ),
    );
  }
}

class SlopingContainer extends StatelessWidget {
  const SlopingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: SlopingClipper(),
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        color: Colors.blue,
        child: const Padding(
          padding: EdgeInsets.all(15.0),
          child: Text('Hotels Search',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ),
      ),
    );
  }
}

class SlopingClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(size.width - 40, 0.0)
      ..lineTo(size.width, size.height)
      ..lineTo(0.0, size.height)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
