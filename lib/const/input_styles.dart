import 'package:flutter/material.dart';
import 'package:client/const/colors.dart';

const textInputDecorationLight = InputDecoration(
    hintStyle: TextStyle(
      fontSize: 18,
      color: LColors.grey,
    ),
    contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
    counterText: "",
    focusedBorder:
        OutlineInputBorder(borderSide: BorderSide(color: LColors.grey)),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: LColors.lightgrey),
        borderRadius: BorderRadius.all(Radius.circular(5.0))));

const textStyleLight = TextStyle(fontSize: 18, color: LColors.dark);
