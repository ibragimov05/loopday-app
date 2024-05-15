import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class CustomTextField extends StatefulWidget {
  final IconData icon;
  final String labelText;
  bool isPassword;
  final String errorMessage;
  final TextEditingController textEditingController;

  CustomTextField({
    super.key,
    required this.icon,
    required this.labelText,
    required this.isPassword,
    required this.errorMessage,
    required this.textEditingController,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isPressed = false;
  bool isObscure = false;

  @override
  void initState() {
    if (widget.isPassword) {
      isObscure = true;
    }
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.textEditingController,
      cursorColor: Colors.grey.withOpacity(0.7),
      obscureText: isObscure,
      decoration: InputDecoration(
        errorText: widget.errorMessage.isEmpty ? null : widget.errorMessage,
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.grey.withOpacity(0.5), width: 2.0),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.grey.withOpacity(0.5), width: 2.0),
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        hintText: widget.labelText,
        hintStyle: TextStyle(
          color: Colors.grey.withOpacity(0.8),
        ),
        prefixIcon: Icon(
          widget.icon,
          color: Colors.grey.withOpacity(0.7),
        ),
        suffixIcon: widget.isPassword
            ? ZoomTapAnimation(
                onTap: () {
                  setState(() {
                    isPressed = !isPressed;
                    isObscure = !isObscure;
                  });
                },
                child: Icon(
                  isPressed
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  size: 20.sp,
                  color: Colors.grey,
                ),
              )
            : null,
      ),
    );
  }
}
