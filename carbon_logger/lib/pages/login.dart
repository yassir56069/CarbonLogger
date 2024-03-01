// ignore_for_file: sort_child_properties_last

import 'package:flutter/foundation.dart'; 
import 'package:flutter/material.dart'; 
import 'package:form_field_validator/form_field_validator.dart'; 
  
class Login extends StatefulWidget { 
  const Login({super.key}); 
  
  @override 
  State<Login> createState() => _LoginState(); 
} 
  
class _LoginState extends State<Login> { 
  Map userData = {}; 
  final _formkey = GlobalKey<FormState>(); 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar( 
        backgroundColor: Colors.black,
        title: const Text('Login Page',
        
          style: TextStyle(color: Colors.grey),
        ), 
        centerTitle: true, 
      ), 
      backgroundColor: const Color.fromARGB(255, 22, 22, 22),
      body: 
        loginView(context),
    ); 
  }

  SingleChildScrollView loginView(BuildContext context) {
    return 
      SingleChildScrollView( 
      child: Column( 
        children: <Widget>[ 
          Padding( 
            padding: const EdgeInsets.only(top: 30.0), 
            child: Center( 
              child: Container( 
                width: 120, 
                height: 120, 
                decoration: BoxDecoration( 
                    borderRadius: BorderRadius.circular(40), 
                    border: Border.all(color: Colors.blueGrey)), 
                child: Image.asset('assets/logo.png'), 
              ), 
            ), 
          ), 
          Padding( 
            padding: const EdgeInsets.symmetric(horizontal: 15), 
            child: Padding( 
                padding: const EdgeInsets.all(12.0), 
                child: Form( 
                  key: _formkey, 
                  child: Column( 
                      crossAxisAlignment: CrossAxisAlignment.start, 
                      children: <Widget>[ 
                        Padding( 
                            padding: const EdgeInsets.all(12.0), 
                            child: TextFormField( 
                                validator: MultiValidator([ 
                                  RequiredValidator( 
                                      errorText: 'Enter email address'), 
                                  EmailValidator( 
                                      errorText: 
                                          'Please correct email filled'), 
                                ]).call, 
                                decoration: const InputDecoration( 
                                    hintText: 'Email', 
                                    labelText: 'Email', 
                                    prefixIcon: Icon( 
                                      Icons.email, 
                                      color: Colors.green, 
                                    ), 
                                    errorStyle: TextStyle(fontSize: 18.0), 
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.green),
                                        ),
                                    border: OutlineInputBorder( 
                                        borderSide: 
                                            BorderSide(color: Color.fromARGB(255, 54, 244, 79)), 
                                        borderRadius: BorderRadius.all( 
                                            Radius.circular(9.0)))))), 
                        Padding( 
                          padding: const EdgeInsets.all(12.0), 
                          child: TextFormField( 
                            validator: MultiValidator([ 
                              RequiredValidator( 
                                  errorText: 'Please enter Your Password'), 
                              MinLengthValidator(8, 
                                  errorText: 
                                      'Password must be atleast 8 digits long'), 
                              PatternValidator(r'(?=.*?[#!@$%^&*-])', 
                                  errorText: 
                                      'Password must have atleast one special character') 
                            ]).call, 
                            decoration: const InputDecoration( 
                              hintText: 'Password', 
                              labelText: 'Password', 
                              prefixIcon: Icon( 
                                Icons.key, 
                                color: Colors.green, 
                              ), 
                              errorStyle: TextStyle(fontSize: 18.0),
                              hoverColor: Colors.greenAccent, 
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green),
                              ),
                              border: OutlineInputBorder( 
                                  borderSide: BorderSide(color: Colors.red), 
                                  borderRadius: 
                                      BorderRadius.all(Radius.circular(9.0))), 
                            ), 
                          ), 
                        ), 
                        Container( 
                          margin: const EdgeInsets.fromLTRB(180, 0, 0, 0), 
                          child: const Text('Forgot Password!',
                            style: TextStyle(
                              color: Colors.grey
                            ),
                          ), 
                        ), 
                        Padding( 
                          padding: const EdgeInsets.all(28.0), 
                          child: SizedBox( 
                            child: ElevatedButton( 
                              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(136, 66, 66, 66))),
                              child: const Text( 
                                'Login', 
                                style: TextStyle( 
                                    color: Color.fromARGB(255, 17, 17, 17), fontSize: 25), 
                              ), 
                              onPressed: () { 
                                if (_formkey.currentState!.validate()) { 
                                  if (kDebugMode) {
                                    print('form submiitted');
                                  } 
                                } 
                              }, 
                            ), 
                            width: MediaQuery.of(context).size.width, 
                            height: 50, 
                          ), 
                        ), 
                        const Center( 
                          child: Padding( 
                            padding: EdgeInsets.fromLTRB(0, 30, 0, 0), 
                            child: Center( 
                              child: Text( 
                                'Or Sign In Using!', 
                                style: TextStyle( 
                                    fontSize: 18, color: Colors.black), 
                              ), 
                            ), 
                          ), 
                        ), 
                        Row( 
                          mainAxisAlignment: MainAxisAlignment.center, 
                          children: [ 
                            Padding( 
                              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0), 
                              child: Row( 
                                children: [ 
                                  SizedBox( 
                                      height: 40, 
                                      width: 40, 
                                      child: Image.asset( 
                                        'assets/social.jpg', 
                                        fit: BoxFit.cover, 
                                      )), 
                                  SizedBox( 
                                    height: 70, 
                                    width: 70, 
                                    child: Image.asset( 
                                      'assets/carbon_logo.png', 
                                      fit: BoxFit.cover, 
                                    ), 
                                  ), 
                                  SizedBox( 
                                    height: 40, 
                                    width: 40, 
                                    child: Image.asset( 
                                      'assets/google.png', 
                                      fit: BoxFit.cover, 
                                    ), 
                                  ), 
                                ], 
                              ), 
                            ), 
                          ], 
                        ), 
                        Center( 
                          child: Container( 
                            padding: const EdgeInsets.only(top: 50), 
                            child: const Text( 
                              'SIGN UP!', 
                              style: TextStyle( 
                                fontSize: 20, 
                                fontWeight: FontWeight.w700, 
                                color: Colors.lightBlue, 
                              ), 
                            ), 
                          ), 
                        ) 
                      ]), 
                )), 
          ), 
        ], 
      ), 
    );
  } 
} 