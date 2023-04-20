
import 'package:flutter/material.dart';
import 'package:mobile/utils/colors.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key, this.txt,this.txtSize}) : super(key: key);
  final String? txt;
  final double? txtSize;


  @override
  Widget build(BuildContext context) {
    return Text(txt!,style: TextStyle(color: UiColors.txtClr!,
      fontSize: txtSize,),);
  }
}