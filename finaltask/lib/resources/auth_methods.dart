import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:finaltask/resources/storage_methods.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthMethods{
  final FirebaseAuth _auth= FirebaseAuth.instance;
  final FirebaseFirestore _firestore= FirebaseFirestore.instance;
  // sign up user
  Future<String> signUpUser({
     required  String email,
    required  String password,
    required  String username,
    required  String bio,
    required Uint8List file,
}) async{
    String result="Some error occured";
    try {
      if(email.isNotEmpty || password.isNotEmpty || username.isNotEmpty||bio.isNotEmpty  );
      {
      // register user
      UserCredential cred= await _auth.createUserWithEmailAndPassword(email: email, password: password);

      print(cred.user!.uid);

      String photoUrl= await StorageMethods().uploadImageToStorage('profilePics', file, false);
         // add user to over data base
       await _firestore.collection('users').doc(cred.user!.uid).set({
           'username': username,
           'uid': cred.user!.uid,
           'email': email,
           'bio': bio,
           'followers':[],
           'following': [],
           'photoUrl': photoUrl,
      });

       //


         result="success";
      }
    } catch(err){
      result=err.toString();
    }
    return result;
  }


}