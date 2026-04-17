import 'package:flutter/material.dart';

class SairLogoWidget extends StatelessWidget {
  const SairLogoWidget({super.key, required this.width, required this.height});
  final double width, height;
  @override
  Widget build(BuildContext context) {
    return 
      Image.asset('assets/images/logo.png', width: width, height: height,);
  }
}
