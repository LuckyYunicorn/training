import 'package:flutter/material.dart';

class CustomStepper extends StatefulWidget {
  const CustomStepper({super.key});

  @override
  State<CustomStepper> createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stepper")),
      body: Column(
        children: [
          Text("All steps: $_currentStep"),
          Stepper(
            // stepIconBuilder: (int stepIndex, StepState stepState) {
            //   switch (stepState) {
            //     case StepState.indexed:
            //       return Icon(Icons.circle, color: Colors.grey); // default
            //     case StepState.editing:
            //       return Icon(Icons.edit, color: Colors.orange);
            //     case StepState.complete:
            //       return Icon(Icons.check_circle, color: Colors.green);
            //     case StepState.disabled:
            //       return Icon(Icons.block, color: Colors.red);
            //     case StepState.error:
            //       return Icon(Icons.error, color: Colors.redAccent);
            //   }
            // },
            steps: [
              Step(
                title: Text("Step 1"),
                content: Text("This is the first step"),
                isActive: _currentStep == 0 ? false : true,
              ),
              Step(
                title: Text("Step 2"),
                content: Text("This is the second step"),
                isActive: _currentStep > 1 ? false : true,
                state: _currentStep > 1
                    ? StepState.complete
                    : StepState.indexed,
              ),
              Step(
                title: Text("Step 3"),
                content: Text("This is the third step"),
                isActive: false,
                state: StepState.indexed,
              ),
            ],
            currentStep: _currentStep,
            onStepTapped: (int index) {
              print("Step $index tapped");

              setState(() {
                _currentStep = index;
              });
            },
            onStepContinue: () {
              print("Continue");
              setState(() {
                if (_currentStep < 2) {
                  _currentStep++;
                }
              });
            },
            onStepCancel: () {
              print("Cancel");
              setState(() {
                if (_currentStep > 0) {
                  _currentStep--;
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
