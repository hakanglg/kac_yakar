import 'package:flutter/material.dart';
import 'package:kac_yakar/core/constants/color/color_constants.dart';

ThemeData myTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    scaffoldBackgroundColor: ColorConstants.instance.shark,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: ColorConstants.instance.white, fontWeight: FontWeight.bold)),
    textTheme: TextTheme(
        headline6: TextStyle(
            color: ColorConstants.instance.white,
            fontWeight: FontWeight.bold)));