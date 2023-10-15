import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_airbnb_app_2/size.dart';
import 'package:flutter_airbnb_app_2/styles.dart';

class CountFormField extends StatefulWidget {
  final prefixText;

  const CountFormField({super.key, this.prefixText});

  @override
  State<CountFormField> createState() => _CountFormFieldState();
}

class _CountFormFieldState extends State<CountFormField> {
  var count = 0;
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: count.toString());
  }

  void add() {
    setState(() {
      if (count < 10) {
        count = count + 1;
        _controller.text = count.toString();
      }
    });
  }

  void minus() {
    setState(() {
      if (count > 0) {
        count = count - 1;
        _controller.text = count.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(gap_xs),
          child: Center(
            child: SizedBox(
              width: double.infinity,
              child: TextFormField(
                controller: _controller,
                textAlignVertical: TextAlignVertical.bottom,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 8,
          left: 20,
          child: Text(
            widget.prefixText,
            style: overLine(),
          ),
        ),
        Positioned(
          top: 25,
          right: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                padding: EdgeInsets.only(right: 2),
                constraints: BoxConstraints(),
                icon: Icon(CupertinoIcons.add_circled),
                iconSize: 20,
                onPressed: () {
                  add();
                  print("더하기 더하기");
                },
              ),
              IconButton(
                padding: EdgeInsets.only(left: 2),
                constraints: BoxConstraints(),
                icon: Icon(CupertinoIcons.minus_circle),
                iconSize: 20,
                onPressed: () {
                  minus();
                  print("빼기 빼기");
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
