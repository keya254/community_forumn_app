// ------STRINGS-----------


// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

const baseURL = 'http://192.168.43.109:8000/api';
const loginURL = baseURL + '/login';
const registerURL = baseURL + '/register';
const logoutURL = baseURL + '/logout';
const userURL = baseURL + '/user';
const postURL = baseURL + '/posts';
const commentsURL = baseURL + '/comments';

//---Errors-----
const serverError = 'Server error';
const unauthorized = 'Unauthorized';
const somethingWentWrong = 'Something went wrong, try again!';

//----- input decoration
InputDecoration kInputDecoration(String label){
  return InputDecoration(
                labelText: label,
                contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.black))
  );
}
//-----button style--
TextButton kTextButton(String label, Function onPressed){
  return  TextButton(
               
                child: Text(label, style: TextStyle(color: Colors.white),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith((states) => Colors.blue), 
                  padding: MaterialStateProperty.resolveWith((states) => EdgeInsets.symmetric(vertical: 10))
                  ),
                   onPressed: () => onPressed(),
                );
              }
//-------loginRegister----

Row kLoginRegisterHint(String text, String label, Function OnTap){
  return   Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(text),
                    GestureDetector(
                      child: Text(label,style: TextStyle(color: Colors.blue),),
                      onTap: ()=> OnTap()
                    )
                  ],
                );
}
