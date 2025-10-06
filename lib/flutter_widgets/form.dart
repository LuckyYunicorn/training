import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training/flutter_widgets/text_field.dart';
import 'package:training/flutter_widgets/text_form_field.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({super.key});

  @override
  State<CustomForm> createState() => _CustomFormState();
}

// enum AutovalidateMode {
//   disabled,   // (Default) validation sirf manually call karne par hoti hai
//   always,     // hamesha validate karega, jaise hi text change hota hai
//   onUserInteraction, // jab user interact karega (type kare ya focus chhodega)
// }
class _CustomFormState extends State<CustomForm> {
  final _fromKey = GlobalKey<FormState>();

  final TextEditingController myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,

          // onChanged: () {
          //   print("object");
          // },
          // canPop: false,
          // onPopInvokedWithResult: (didPop, result) {
          //   print("Did pop: $didPop, Result: $result");
          // },
          key: _fromKey,
          child: Column(
            children: [
              CustomTextFormField(myController: myController),
              SizedBox(height: 10),
              CustomTextField(),
              SizedBox(height: 15),

              ElevatedButton(
                onPressed: () {
                  if (_fromKey.currentState!.validate()) {
                    print("Done");
                  }
                },
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
