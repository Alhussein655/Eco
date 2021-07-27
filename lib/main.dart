import 'package:eco/Screen/ForgetPass.dart';
import 'package:eco/Screen/HomeScreen.dart';
import 'package:eco/Screen/SignIn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main(){
  runApp(Eco());
}
class Eco extends StatefulWidget {
  @override
  _EcoState createState() => _EcoState();
}

class _EcoState extends State<Eco> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder:()=> MaterialApp(
        initialRoute: SignIn.id,
        routes: {
SignIn.id:(context)=>SignIn(),
      ForgetPass.id:(context)=>ForgetPass(),
          HomeScreen.id:(context)=>HomeScreen()
        },

      )
    );
  }
}

