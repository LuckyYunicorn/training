import 'package:flutter/material.dart';

class CustomTimePicker extends StatefulWidget {
  const CustomTimePicker({super.key});

  @override
  State<CustomTimePicker> createState() => _CustomTimePickerState();
}

class _CustomTimePickerState extends State<CustomTimePicker> {
  TimeOfDay? selectedTime;

  @override
  Widget build(BuildContext context) {
    String formattedTime = selectedTime != null
        ? selectedTime!.format(context)
        : "No Time Selected";

    return Scaffold(
      appBar: AppBar(title: const Text("Time Picker Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(formattedTime, style: const TextStyle(fontSize: 22)),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () async {
                TimeOfDay? pickedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  builder: (context, child) {
                    return Theme(
                      data: Theme.of(context).copyWith(
                        // colorScheme: const ColorScheme.light(
                        //   // primary: Colors.deepPurple, // clock hand color
                        //   // onPrimary: Colors.blue, // text color on clock
                        //   // onSurface: Colors.red, // numbers color
                        //   // surface: Colors.purple,
                        // ),
                        timePickerTheme: TimePickerThemeData(
                          dialBackgroundColor: Colors.red,
                          dialHandColor: Colors.green,
                          dialTextColor: Colors.white,
                          dialTextStyle: TextStyle(
                            fontSize: 18

                          ),
                          backgroundColor: Colors.blue,
                          cancelButtonStyle: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all(Colors.white),
                            backgroundColor: MaterialStateProperty.all(Colors.red),
                          ),
                          // timeSelectorSeparatorColor:
                          shape:  RoundedRectangleBorder(),
                          dayPeriodShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.elliptical(10, 40)),
                          ),

                        )
                      ),
                      child: child!,
                    );
                  },
                );

                if (pickedTime != null) {
                  setState(() {
                    selectedTime = pickedTime;
                  });
                }
              },
              child: const Text("Pick Time"),
            ),
          ],
        ),
      ),
    );
  }
}
