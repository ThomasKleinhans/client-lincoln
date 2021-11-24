import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:client/const/colors.dart';

class LButton extends StatelessWidget {
  const LButton(
      {Key? key,
      required this.onPressed,
      required this.label,
      this.color = LColors.blue,
      this.textColor = LColors.light})
      : super(key: key);

  final GestureTapCallback onPressed;
  final Color color;
  final Color textColor;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  onPrimary: textColor,
                  primary: color,
                  fixedSize: const Size(270, 50),
                  textStyle: const TextStyle(fontSize: 18)),
              onPressed: onPressed,
              child: Text(label)),
        ),
      ],
    );
  }
}
