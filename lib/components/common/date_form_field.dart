import 'package:flutter/material.dart';
import 'package:flutter_airbnb_app_2/components/common/calendar.dart';
import 'package:flutter_airbnb_app_2/size.dart';
import 'package:flutter_airbnb_app_2/styles.dart';
import 'package:intl/intl.dart';

class DateFormField extends StatefulWidget {
  final hintText;
  final prefixText;
  const DateFormField({super.key, this.hintText, this.prefixText});

  @override
  State<DateFormField> createState() => _DateFormFieldState();
}

class _DateFormFieldState extends State<DateFormField> {
  late TextEditingController _controller;
  DateTime date = DateTime.now();

  void choose() {
    _controller;
  }

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(
        text: DateFormat("yy-MM-dd").format(DateTime.now()).toString());
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(gap_xs),
          child: SizedBox(
            width: double.infinity,
            child: TextFormField(
              controller: _controller,
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: widget.hintText,
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
          top: 20,
          right: 10,
          child: IconButton(
            icon: Icon(Icons.calendar_month),
            onPressed: () async {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    actions: [Calendar()],
                  );
                },
              );
            },
          ),
        )
      ],
    );
  }
}
