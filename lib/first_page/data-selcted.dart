import 'package:flutter/material.dart';

class SimpleDatePicker extends StatefulWidget {
  @override
  _SimpleDatePickerState createState() => _SimpleDatePickerState();
}

class _SimpleDatePickerState extends State<SimpleDatePicker>
    with RestorationMixin {
  final RestorableDateTimeN _startDate = RestorableDateTimeN(DateTime(2021));
  final RestorableDateTimeN _endDate =
  RestorableDateTimeN(DateTime(2021, 1, 5));

  @override
  String? get restorationId => 'simple_date_picker';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_startDate, 'start_date');
    registerForRestoration(_endDate, 'end_date');
  }

  void _selectDateRange(DateTimeRange? newSelectedDate) {
    if (newSelectedDate != null) {
      setState(() {
        _startDate.value = newSelectedDate.start;
        _endDate.value = newSelectedDate.end;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13.0),
            ),
            side: const BorderSide(
              width: 2.0,
              color: Colors.blue,
            ),
          ),

          onPressed: () {
            showDateRangePicker(
              context: context,
              firstDate: DateTime(2021),
              lastDate: DateTime(2022),
              initialDateRange: DateTimeRange(
                start: _startDate.value ?? DateTime.now(),
                end: _endDate.value ?? DateTime.now(),
              ),
            ).then(_selectDateRange);

          },
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 20,),
             // Text('Open Date Range Picker', ),
              Text(
                ' ${_startDate.value?.toString() }==> '
                    ,
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500
                ),
              ),
              Spacer(),
              Icon(Icons.clear,color: Colors.blue),
            ],
          ),

        ),
      ),
    );
  }
}


