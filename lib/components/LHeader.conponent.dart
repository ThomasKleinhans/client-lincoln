import 'package:flutter/material.dart';
import 'package:client/const/colors.dart';

class LHeader extends StatelessWidget {
  const LHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Icon(
          Icons.help_center,
          color: LColors.blue,
        ),
        Icon(
          Icons.disabled_by_default,
          color: LColors.red,
        )
      ],
    );
  }
}
