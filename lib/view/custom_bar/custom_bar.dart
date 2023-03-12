import 'package:flutter/material.dart';

class CustomSnackbar extends StatefulWidget {
  final String message;
  final Color backgroundColor;
  final Color textColor;
  final Duration duration;

  const CustomSnackbar({
    Key? key,
    required this.message,
    this.backgroundColor = Colors.black87,
    this.textColor = Colors.white,
    this.duration = const Duration(seconds: 3),
  }) : super(key: key);

  @override
  _CustomSnackbarState createState() => _CustomSnackbarState();
}

class _CustomSnackbarState extends State<CustomSnackbar> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
    _controller.forward();
    Future.delayed(widget.duration, () {
      _controller.reverse();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeTransition(
        opacity: _animation,
        child: Container(
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: widget.backgroundColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            widget.message,
            style: TextStyle(
              color: widget.textColor,
            ),
          ),
        ),
      ),
    );
  }
}
