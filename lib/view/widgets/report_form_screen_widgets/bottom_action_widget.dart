import 'package:flutter/material.dart';

class BottomActionWidget extends StatelessWidget {
  const BottomActionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 32),
      child: ElevatedButton(
        onPressed: () {},
        child: const Text("Submit Report"),
      ),
    );
  }
}
