import 'package:flutter/material.dart';
import 'package:tracer/constants.dart';

class Borderbox extends StatelessWidget {

  final Widget child;
  final EdgeInsets padding;
  final double width, height;

  const Borderbox({Key? key, required this.padding, required this.width, required this.height, 
  required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: colorWhite, 
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: colorGrey.withAlpha(40),width: 2)
      ),
      padding: padding,
      child: Center(child: child),
    );
  }
}

