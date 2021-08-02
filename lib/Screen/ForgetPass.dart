import 'package:eco/Widget/CustomTextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ForgetPass extends StatefulWidget {
  static String id='3';
  @override
  _ForgetPassState createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  @override
  Widget build(BuildContext context) {
    return
Scaffold(
  backgroundColor: Colors.lightBlue,
  body:       ListView(
    children: [
      SizedBox(height: 100,),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child:
        Icon(Icons.lock,size: 100,color: Colors.white,),
      ),
      SizedBox(
        height: 20,
      ),
      Align(alignment:Alignment.center,child: Text('Forgot Password?',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
    SizedBox(height: 30,)
      ,  Align(alignment:Alignment.center,child: Text('We just need you to register your mail ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300,color: Colors.grey[200]),)),
     Align(alignment:Alignment.center,child: Text('to send you passsword reset ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300,color: Colors.grey[200]),)),
      CustomTextField(hint: 'E _ mail',secure: false,icon: Icons.person,),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: 60,width: 90,
          decoration: BoxDecoration(color: Colors.lightBlue,borderRadius: BorderRadius.circular(15)),
        child: Center(child: Text('Reset Password',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.grey[200]),))
        ),
      ),
      SizedBox(
        height: 60,
      )
      ,Padding(
        padding: const EdgeInsets.all(15.0),
        child: Align(alignment:Alignment.center,child: Text('Dont have an account ?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.grey[200]),)),
      ),
      TextButton(onPressed: (){}, child: Text('Sign Up',style: TextStyle(color: Colors.grey[200],fontSize: 20,fontWeight: FontWeight.bold),))

    ],
  ),

);  }
}
