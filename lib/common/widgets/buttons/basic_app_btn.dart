import 'package:flutter/material.dart';

class BasicAppButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;
  final double? height;
  final double? width;
  final bool isLoading;

  const BasicAppButton({
    required this.onPressed,
    this.title = '',
    this.height,
    this.width,
    this.isLoading = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return isLoading ? _loading(context) : _initial(context);
  }

  Widget _loading(BuildContext context) {
    return ElevatedButton(
      onPressed: null,
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: Colors.grey,
        minimumSize:
            Size(width ?? MediaQuery.of(context).size.width, height ?? 60),
      ),
      child: const CircularProgressIndicator(
        color: Colors.white,
      ),
    );
  }

  Widget _initial(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff3461FD).withOpacity(0.8),
            offset: const Offset(0, 5),
            blurRadius: 17,
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize:
              Size(width ?? MediaQuery.of(context).size.width, height ?? 60),
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
