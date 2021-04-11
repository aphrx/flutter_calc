import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  Button({Key key, this.value, this.funct}) : super(key: key);

  final String value;
  final Function funct;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        child: Container(
            alignment: Alignment.center,
            width: 90,
            height: 90,
            child: Text(value,
                style: GoogleFonts.montserrat(
                    fontSize: 30, fontWeight: FontWeight.w200))),
        onPressed: () => value == '=' ? funct() : funct(value));
  }
}
