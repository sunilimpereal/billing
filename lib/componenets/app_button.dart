import 'package:flutter/material.dart';

class AppButton extends StatefulWidget {
  final Widget child;
  final Function() onPressed;
  const AppButton({
    super.key,
    required this.child,
    required this.onPressed,
  });

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: widget.child,
      ),
    );
  }
}
