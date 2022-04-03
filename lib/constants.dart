import 'package:flutter/material.dart';

const colorBlack = Color.fromARGB(255, 0, 0, 0);
const colorGrey = Color.fromRGBO(141, 141, 141, 1.0);

const colorWhite = Colors.white;
const colorDarkBlue = Color.fromRGBO(20, 25, 45, 1.0);

//We don't have to constantly write the text style when we add textstyles into the u.i
//body text used in paragraphs
const TextTheme textThemeDefault = TextTheme(
  headline1: TextStyle(
    color: colorBlack, fontWeight: FontWeight.w700, fontSize: 26),
  headline2: TextStyle(
    color: colorBlack, fontWeight: FontWeight.w700, fontSize: 22),
  headline3: TextStyle(
    color: colorBlack, fontWeight: FontWeight.w700, fontSize: 20),
  headline4: TextStyle(
    color: colorBlack, fontWeight: FontWeight.w700, fontSize: 16),
  headline5: TextStyle(
    color:colorBlack, fontWeight: FontWeight.w700, fontSize: 14),
  headline6: TextStyle(
    color: colorBlack, fontWeight: FontWeight.w700, fontSize: 12),
  bodyText1: TextStyle(
    color: colorBlack, fontSize: 14, fontWeight: FontWeight.w500, height: 1.5),
  bodyText2: TextStyle(
    color: colorGrey, fontSize: 14, fontWeight: FontWeight.w500, height: 1.5),
  subtitle1:
    TextStyle(color: colorBlack, fontSize: 12, fontWeight: FontWeight.w400),
  subtitle2: 
    TextStyle(
      color: colorGrey, fontSize: 12, fontWeight: FontWeight.w400) 
  ); 

const TextTheme textThemeSmall = TextTheme(
  headline1: TextStyle(
    color: colorBlack, fontWeight: FontWeight.w700, fontSize: 22),
  headline2: TextStyle(
    color: colorBlack, fontWeight: FontWeight.w700, fontSize: 20),
  headline3: TextStyle(
    color: colorBlack, fontWeight: FontWeight.w700, fontSize: 18),
  headline4: TextStyle(
    color: colorBlack, fontWeight: FontWeight.w700, fontSize: 14),
  headline5: TextStyle(
    color: colorBlack, fontWeight: FontWeight.w700, fontSize: 12),
  headline6: TextStyle(
    color: colorBlack, fontWeight: FontWeight.w700, fontSize: 10),
  bodyText1: TextStyle(
    color: colorBlack, fontSize: 12, fontWeight: FontWeight.w500, height: 1.5),
  bodyText2: TextStyle(
    color: colorBlack, fontSize: 14, fontWeight: FontWeight.w500, height: 1.5),
  subtitle1:
    TextStyle(color: colorBlack, fontSize: 12, fontWeight: FontWeight.w400),
  subtitle2: 
    TextStyle(
      color: colorGrey, fontSize: 12, fontWeight: FontWeight.w400)
);