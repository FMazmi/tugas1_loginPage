import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login 08',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                    Padding(padding: EdgeInsets.only(bottom: 60.0),
                      child: Center(
                        child: Container(
                          width: 50,
                          height: 50,

                          child: FlutterLogo(),
                        ),
                      ),
                    ),

                    Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40)
                          ),
                          labelText: 'Email',
                          hintText: 'Masukan Email'
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),

                    Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40)
                          ),
                          labelText: 'Password',
                          hintText: 'Masukan Password'
                        ),
                      ),
                    ),
                SizedBox(height: 30,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                      child: SizedBox(
                        height: 35 ,
                        width: 1500,
                        child: ElevatedButton(onPressed: (){},
                            child: Center(
                                child: Text(
                                      'Log In',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),
                                )
                            ),
                        ),
                      ),
                  ),

                    // padding: EdgeInsets.all(10),
                    // decoration: BoxDecoration(
                    //   color: Colors.blue,
                    //   borderRadius: BorderRadius.circular(10),
                    // ),
                    // child: Center(
                    //   child: Text(
                    //     'Log In',
                    //     style: TextStyle(
                    //         color: Colors.white,
                    //         fontWeight: FontWeight.bold
                    //     ),
                    //   ),
                    // ),
                  // ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                    child: TextButton(
                        onPressed: (){},
                        child: Text(
                          'Forgot Password?'
                        )
                    )
                  ),
                )
              ],
            )
            ),
          ),
        ),
    );
  }
}



