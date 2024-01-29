import 'package:flutter/material.dart';

class AppButton extends StatefulWidget {
  final Widget child;
  final Function() onPressed;
  const AppButton({
    Key? key,
    required this.child,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ElevatedButton.styleFrom(
            primary: _isHovered ? Colors.blue[900] : Colors.blue, // Change color on hover
            onPrimary: Colors.white, // Text color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: _isHovered ? 6 : 4, // Add elevation on hover
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
