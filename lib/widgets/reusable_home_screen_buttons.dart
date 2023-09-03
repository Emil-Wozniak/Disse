import 'package:flutter/material.dart';

class ReusableHomeButton extends StatelessWidget {
  const ReusableHomeButton(
      {super.key,
      this.width,
      this.height,
      this.gradient = const LinearGradient(
        colors: [
          Color.fromARGB(255, 212, 60, 0),
          Color.fromARGB(255, 214, 184, 13)
        ],
      ),
      required this.onPressed,
      required this.child});

  final double? width;
  final double? height;
  final Gradient gradient;
  final void Function() onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        child: child,
      ),
    );
  }
}



