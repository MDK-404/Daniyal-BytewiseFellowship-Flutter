import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:finaltask/models/user.dart' as model;
import 'package:finaltask/resources/storage_methods.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<model.User> getUserDetails() async{
    User currentUser= _auth.currentUser!;

    DocumentSnapshot snap= await _firestore.collection('users').doc(currentUser.uid).get();
    return model.User.fromSnap(snap);
  }


  // sign up user
  Future<String> signUpUser({
    required String email,
    required String password,
    required String username,
    required String bio,
    required Uint8List file,
  }) async {
    String result = "Some error occured";
    try {
      if (email.isNotEmpty ||
          password.isNotEmpty ||
          username.isNotEmpty ||
          bio.isNotEmpty) ;
      {
        // register user
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

        print(cred.user!.uid);

        String photoUrl = await StorageMethods()
            .uploadImageToStorage('profilePics', file, false);
        // add user to over data base
        model.User user = model.User(
          username: username,
          uid: cred.user!.uid,
          email: email,
          bio: bio,
          photoUrl: photoUrl,
          followers: [],
          following: [],
        );

        await _firestore
            .collection('users')
            .doc(cred.user!.uid)
            .set(user.toJson());

        //

        result = "success";
      }
    } catch (err) {
      result = err.toString();
    }
    return result;
  }

// logigng in user
  Future<String> loginUser({
    required String email,
    required String password,
  }) async {
    String result = "Some error occured";

    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        result = "success";
      } else {
        result = "Please enter all the fields";
      }
    } catch (err) {
      result = err.toString();
    }
    return result;
  }
}
