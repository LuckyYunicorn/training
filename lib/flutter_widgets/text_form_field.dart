import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController myController;
  const CustomTextFormField({super.key, required this.myController});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          inputFormatters: [
            FilteringTextInputFormatter.allow(
              RegExp(r'[a-zA-Z0-9@.]'),
            ), // Only allow certain characters
            LengthLimitingTextInputFormatter(50), // Limit input length
          ],
          controller: myController,

          // cursorRadius: Radius.circular(20),
          // cursorWidth: 20,
          // cursorHeight: 100,
          // maxLines: 3,
          // cursorColor: Colors.yellow,
          // textDirection: TextDirection.rtl,
          //  clipBehavior: Clip.hardEdge, mostly ignored
          // obscureText: true,
          // obscuringCharacter: "*",
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            // labelText: "Name",
            // labelStyle:TextStyle(
            //   color: Colors.blue,
            //   fontSize: 18,
            //   fontWeight: FontWeight.w300,
            // ),
            // label: Icon(Icons.arrow_forward)

            // hintText: "E-mail",
            // hintStyle: TextStyle(
            //     color: Colors.blue,
            //     fontSize: 18,
            //     fontWeight: FontWeight.w300,
            //   ),
            // hint: Icon(Icons.abc), // Default center me align hoga

            // prefix: Text("data"),
            // prefixText: "Hello",
            // prefixIcon: Icon(Icons.abc),
            // prefixIconColor: Colors.red,
            // prefixStyle: TextStyle(color: Colors.purple),
            // prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 50),

            // labelText: "Description", //Enable maxlines first
            // hintText: "Enter your detailed description here",
            // alignLabelWithHint: true,
            // contentPadding: EdgeInsets.all(40),
            // helperText: "Hello",
            // counterText: "0/10",
            // icon: Icon(Icons.signal_cellular_null),
            // filled: true,
            // fillColor: Colors.blue,

            // suffixText: "Hello",
            // suffixIcon: Icon(Icons.av_timer,),
            // suffixIconColor: Colors.white,
            prefixIcon: Icon(Icons.lock),
            // suffixIconConstraints: BoxConstraints(),

            // errorMaxLines: 2, Error message kitni line tak extend hoga
            // errorText: 'Yeh ek bohot lamba error message hai jo multiple lines me wrap hoga. bohot lamba error message hai jo multiple lines me wrap',
            // errorMaxLines: 2,
            labelText: "Email",
            floatingLabelAlignment: FloatingLabelAlignment.center,

            // focusedBorder: OutlineInputBorder(
            //   borderSide: BorderSide(
            //     color: Colors.red
            //   )
            //  ),

            // enabled: false,
            // errorBorder: OutlineInputBorder(
            //   // gapPadding: 10,
            //   borderRadius: BorderRadius.circular(12),
            //   borderSide: BorderSide(
            //     color: Colors.yellow,
            //     style: BorderStyle.solid,
            //
            //   ),
            // ),


            enabledBorder: OutlineInputBorder(
              // gapPadding: 10,
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.blue,
                style: BorderStyle.solid,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              // gapPadding: 10,
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.green,
                style: BorderStyle.solid,
              ),
            ),
            border: OutlineInputBorder(
              // gapPadding: 10,
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.red,
                style: BorderStyle.solid,
                width: 10,
              ),
            ),
          ),
          onFieldSubmitted: (value) {
            print(value);
          },
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Email cannot be empty";
            }

            // Email pattern (basic RFC 5322 compliant)
            String pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
            RegExp regex = RegExp(pattern);

            if (!regex.hasMatch(value)) {
              return "Enter a valid email address";
            }

            return null; // ✅ Validation passed
          },
        ),
      ),
    );
  }
}
