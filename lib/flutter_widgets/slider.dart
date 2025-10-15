import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double _currentSliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Slider")),
      body: Center(
        child: Column(
          spacing: 20,
          children: [
            Container(
              height: 150,
              color: Colors.red.withOpacity(_currentSliderValue),
            ),
            Container(
              height: 150,
              color: Colors.green.withOpacity(_currentSliderValue),
            ),
            Slider(
              max: 1.0,
              min: 0.0,
              divisions: 10,
              label: _currentSliderValue.toString(),
              thumbColor: Colors.red,
              activeColor: Colors.green,
              inactiveColor: Colors.blue,
              // secondaryActiveColor: ,
              value: _currentSliderValue,
              onChanged: (value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
