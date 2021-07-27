import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  String hint;
  bool secure;
  IconData icon;
  CustomTextField({this.secure, this.icon, this.hint});
  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(20)),
            child: TextFormField(
              obscureText: widget.secure,
              decoration: InputDecoration(
                  border: InputBorder.none
                ,hintStyle: TextStyle(color: Colors.grey[200]),

                  hintText: widget.hint,
                  prefixIcon: Icon(
                    widget.icon,
                    color: Colors.grey[200],
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
