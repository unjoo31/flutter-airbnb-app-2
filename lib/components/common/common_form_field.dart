import 'package:flutter/material.dart';
import 'package:flutter_airbnb_app_2/size.dart';
import 'package:flutter_airbnb_app_2/styles.dart';

class CommonFormField extends StatelessWidget {
  final prefixText;
  final hintText;

  const CommonFormField({required this.prefixText, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 30, left: 20, bottom: 10),
            hintText: hintText,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2,
                )),
          ),
        ),
        SizedBox(height: gap_s),
        Positioned(
          top: 4,
          left: 20,
          child: Text(
            prefixText,
            style: overLine(),
          ),
        ),
      ],
    );
  }
}
