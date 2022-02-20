//ignore_for_file: file_names
import 'package:doctor/homeScreen.dart';
import 'package:flutter/material.dart';

class logIn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 40,),
              SizedBox(
                  width: double.infinity,
                  child: Text('Rehat App', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32, color: Colors.blueAccent),textAlign: TextAlign.center,)),
              SizedBox(
                  height: 300,
                  child: Image(image: AssetImage('images/doctor_log.png'))),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail_outlined),
                  hintText: 'Enter your e-mail',
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline_rounded),
                  hintText: 'Enter your password',
                ),
              ),

              TextButton(
                child: Text('Forgot Password?', style: TextStyle(decoration: TextDecoration.underline, color: Colors.blueAccent), textAlign: TextAlign.right,),
                onPressed: (){

                },
              ),
              InkWell(
                child: Container(
                  height: 60,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 55),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(child: Text('Login', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),)),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>homeScreen()));
                },
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: double.infinity,
                child: Text('Or, login with', textAlign: TextAlign.center, style: TextStyle(color: Colors.grey, height: 1),),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('images/facebook.png'),
                  ),
                  SizedBox(width: 40,),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('images/google.png'),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: double.infinity,
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                    children: [
                  TextSpan(text: "Don't have an account?", style: TextStyle(color: Colors.grey)),
                  TextSpan(text: "Sign Up", style: TextStyle(color: Colors.blueAccent)),
                ])),
              )

            ],
          ),
        )

      ),
    );
  }

}