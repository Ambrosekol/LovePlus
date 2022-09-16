import 'package:flutter/material.dart';

class CreatedInputField extends StatefulWidget {
  const CreatedInputField(
      {Key? key,
      required this.hinttext,
      required this.labeltext,
      this.onTap,
      required this.textInputType,
      this.prefixIcon,
      this.suffixIcon,
      required this.hideUserInput,
      required this.textController})
      : super(key: key);
  final String hinttext;
  final String labeltext;
  final GestureTapCallback? onTap;
  final TextInputType textInputType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool hideUserInput;
  final TextEditingController textController;

  @override
  State<CreatedInputField> createState() => _CreatedInputFieldState();
}

class _CreatedInputFieldState extends State<CreatedInputField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Color(0xFF2F1699), fontFamily: 'Amaranth'),
      controller: widget.textController,
      decoration: InputDecoration(
        hintText: widget.hinttext,
        labelText: widget.labeltext,
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
      ),
      onTap: widget.onTap,
      cursorColor: const Color(0xFF2F1699),
      keyboardType: widget.textInputType,
      obscureText: widget.hideUserInput,
      obscuringCharacter: '*',
    );
  }
}
