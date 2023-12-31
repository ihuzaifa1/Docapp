import 'package:flutter/material.dart';
import 'package:medicare_dart/LoginPage.dart';
import 'package:medicare_dart/MainPage.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [

              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 130,
                  height: 160,
                  child: CircleAvatar(
                    child: Icon(Icons.person,color: Colors.white,),
                    backgroundColor: Colors.grey,
                  ),
                ),
              ),

              SizedBox(height: 12,),
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text("Full Name"),
                    prefixIcon: Icon(Icons.person,color: Colors.indigo,),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text("Phone Number"),
                    prefixIcon: Icon(Icons.call,color: Colors.indigo,),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text("Email "),
                    prefixIcon: Icon(Icons.email,color: Colors.indigo,),
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text("Password"),
                    prefixIcon: Icon(Icons.lock,color: Colors.indigo,),
                  ),
                ),
              ),

              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(12),
                child: SizedBox(
                  width: double.infinity,
                  child: Material(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainPage(),
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 35),
                        child: Center(
                            child: Text("SignUp",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold
                            ),)),
                      ),
                    ),

                  ),
                ),
              ),

              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already Have An Account.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),),
                  TextButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                  }, child: Text("Login",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
