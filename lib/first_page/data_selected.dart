import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SimpleDatePicker extends StatefulWidget {
  const SimpleDatePicker({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
          ),
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
                const SizedBox(
                  width: 20,
                ),
                Text(
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  '${DateFormat('yyyy-MM-dd').format(_startDate.value!)} ==> '
                  '${DateFormat('yyyy-MM-dd').format(_endDate.value!)}',
                  style: const TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                const Icon(Icons.clear, color: Colors.blue),
              ],
            ),

          ),
        ),
      ),
    );
  }
}


