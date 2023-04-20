
import 'package:flutter/material.dart';
import 'package:mobile/utils/colors.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({Key? key,this.hintTxt,this.hintTxtSize,this.txtSize}) : super(key: key);
  final String? hintTxt;
  final double? hintTxtSize;
  final double? txtSize;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(30),
      child: TextField(
        style: TextStyle(fontSize: txtSize),
        cursorColor: UiColors.cursorClr,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: hintTxt,
          hintStyle: TextStyle(fontSize: hintTxtSize,),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          filled: true,
          fillColor: UiColors.txtFieldBgClr,
          contentPadding: const EdgeInsets.all(16),

        ),
      ),
    );
  }
}
