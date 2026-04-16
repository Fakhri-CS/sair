import 'package:flutter/material.dart';

class FooterLinksWidget extends StatelessWidget {
  const FooterLinksWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            foregroundColor: Colors.grey.shade600,
            textStyle: const TextStyle(fontSize: 13),
          ),
          child: const Text("Forgot ID?"),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Container(
            width: 4,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
              shape: BoxShape.circle,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            foregroundColor: const Color(0xFF1E508F),
            textStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
          child: const Text("Register Now"),
        ),
      ],
    );
  }
}