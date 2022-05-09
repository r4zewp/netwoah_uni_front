import 'package:flutter/material.dart';

class HorizontalProgressBarDottedItem extends StatelessWidget {
  const HorizontalProgressBarDottedItem({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.black : Colors.grey[400],
        shape: BoxShape.circle,
      ),
    );
  }
}
