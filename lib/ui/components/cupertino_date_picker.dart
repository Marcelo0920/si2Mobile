import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime dateTime = DateTime(2020, 2, 1, 10, 20);
  final DateTime initialDate = DateTime(2020, 2, 1, 10, 20);

  String _formatDate(DateTime date) {
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    return formatter.format(date);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Align(
          alignment: Alignment.centerLeft,
          child: CupertinoButton(
              child: Text(
                dateTime != initialDate
                    ? _formatDate(dateTime)
                    : "Pulsa aquí para definir una fecha",
                style: TextStyle(fontSize: 14),
              ),
              onPressed: () {
                showCupertinoModalPopup(
                    context: context,
                    builder: (BuildContext context) => SizedBox(
                          height: 250,
                          child: CupertinoDatePicker(
                            backgroundColor: Colors.white,
                            initialDateTime: dateTime,
                            onDateTimeChanged: (DateTime newTime) {
                              setState(() => dateTime = newTime);
                            },
                            use24hFormat: true,
                            mode: CupertinoDatePickerMode.date,
                          ),
                        ));
              }),
        ));
  }
}
