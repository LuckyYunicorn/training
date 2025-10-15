import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomDateTimePicker extends StatefulWidget {
  const CustomDateTimePicker({super.key});

  @override
  State<CustomDateTimePicker> createState() => _CustomDateTimePickerState();
}

class _CustomDateTimePickerState extends State<CustomDateTimePicker> {
  DateTime? selectedDate; // store selected date

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Date Picker Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectedDate == null
                  ? "No date selected"
                  : DateFormat('dd MMM yyyy').format(selectedDate!),
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                // Open the date picker
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2030),
                  builder: (context, child) {
                    return Theme(
                      data: Theme.of(context).copyWith(
                        // colorScheme: const ColorScheme.light(
                        //   primary: Colors.red,
                        //   onPrimary: Colors.yellow,
                        //   onSurface: Colors.blue,
                        //
                        // ),
                        datePickerTheme: DatePickerThemeData(
                          dayShape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              // borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          dayBackgroundColor:
                              MaterialStateProperty.resolveWith<Color?>((
                                states,
                              ) {
                                if (states.contains(MaterialState.selected)) {
                                  return Colors
                                      .orange; // Selected day background color
                                }
                                if (states.contains(MaterialState.disabled)) {
                                  return Colors
                                      .grey; // Disabled day background color
                                }
                                return Colors
                                    .green; // Default day background color
                              }),
                          elevation: 5,
                          dayForegroundColor: MaterialStateProperty.all(
                            Colors.white,
                          ),
                          shadowColor: Colors.green,
                          cancelButtonStyle: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all(
                              Colors.red,
                            ),
                          ),
                          confirmButtonStyle: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all(
                              Colors.green,
                            ),
                          ),
                          subHeaderForegroundColor: Colors.black,
                          todayBackgroundColor:
                              MaterialStateProperty.resolveWith<Color?>((
                                states,
                              ) {
                                return Colors
                                    .redAccent; // Default day background color
                              }),
                          headerBackgroundColor: Colors.blue,
                          weekdayStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          backgroundColor: Colors.white,
                          yearShape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      child: child!,
                    );
                  },
                );

                // Update state if user picked a date
                if (pickedDate != null) {
                  setState(() {
                    selectedDate = pickedDate;
                  });
                }
              },
              child: const Text("Pick Date"),
            ),
          ],
        ),
      ),
    );
  }
}
