import 'package:flutter/material.dart';
import 'package:tracer/constants.dart';
import 'package:tracer/widget_functions.dart';

class OptionButton extends StatelessWidget {
  
  final String text;
  final IconData icon;
  final double width;

  const OptionButton({Key? key, required this.text, required this.icon, required this.width}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      minWidth: width,
      color: colorDarkBlue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      onPressed: (){},
      child: Row(
        children: [
          Icon(icon, color: colorWhite,),
          addHorizontalSpace(10),
          Text(text, style: const TextStyle(color: colorWhite),)
        ],
      ),
    );
  }
}