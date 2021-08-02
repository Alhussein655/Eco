import 'package:eco/Screen/ForgetPass.dart';
import 'package:eco/Screen/HomeScreen.dart';
import 'package:eco/Widget/CustomTextField.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
class SignIn extends StatefulWidget {
  static String id='1';

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return       Scaffold(backgroundColor: Colors.grey[300],
      body:
      ListView(
        children: [
          SizedBox(height: 100,),
          Align(alignment: Alignment.center,child: Text('Welcome',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.deepOrange),)),
          SizedBox(height: 60,),
          CustomTextField(hint: 'User name',icon: Icons.person,secure: false,),
          CustomTextField(hint: 'Pass',icon: Icons.lock,secure: false,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(alignment:Alignment.topRight,child: TextButton(onPressed: (){
              Navigator.pushNamed(context, ForgetPass.id);
            }, child: Text('Forget Pass',style: TextStyle(color: Colors.deepOrange,fontSize: 18),))),
          )
          ,
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: InkWell(
              onTap:
                  (){
                    Navigator.pushNamed(context, HomeScreen.id);
              }, child: Container(
              height: 50.h,width: 40.w,
              decoration: BoxDecoration(color: Colors.deepOrange,borderRadius: BorderRadius.circular(15)),
              child: Center(child: Text('LogIn',style: TextStyle(color: Colors.grey[200],fontWeight: FontWeight.bold,fontSize: 20),)),
            ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: InkWell(
              onTap:
                  (){

              }, child: Container(
              height: 50,width: .1.sw,
              decoration: BoxDecoration(color: Colors.deepOrange,borderRadius: BorderRadius.circular(15)),
              child: Center(child: Text('SignUp',style: TextStyle(color: Colors.grey[200],fontWeight: FontWeight.bold,fontSize: 20),)),
            ),
            ),
          ),

        ],
      ),
    );

  }
}
