import 'package:flutter/material.dart';

class NormalButton extends StatelessWidget {
  NormalButton(
      {Key? key,
      required this.buttonText,
      required this.textColor,
      this.buttonWidth,
      required this.prefixWidget,
      required this.onTapFunction,
      required this.containsPrefixWidget,
      required this.buttonColor})
      : super(key: key);

  final GestureTapCallback onTapFunction;
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final double? buttonWidth;
  Widget prefixWidget;
  final bool containsPrefixWidget;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapFunction,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 50.0,
        width: buttonWidth,
        child: containsPrefixWidget
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    prefixWidget,
                    Text(
                      buttonText,
                      style: TextStyle(
                          color: textColor,
                          fontSize: 20,
                          fontFamily: 'Amaranth'),
                    ),
                  ])
            : Text(
                buttonText,
                style: TextStyle(
                    color: textColor, fontSize: 20, fontFamily: 'Amaranth'),
              ),
      ),
    );
  }
}
