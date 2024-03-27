//
// @Author: "Eldor Turgunov"
// @Date: 17.02.2024
//

import 'package:barber_shop/routes/app_routes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var isPasswordHidden = true.obs;
  final FirebaseAuth auth = FirebaseAuth.instance;

  void onSignUp() {
    String name = nameController.text.trim();
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    createAccount(email, password, name);
  }

  Future<String> createAccount(
      String email, String password, String name) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? currentUser = auth.currentUser;

      // Save user data to Firebase Realtime Database
      if (currentUser != null) {
        CollectionReference users =
            FirebaseFirestore.instance.collection('users');
        await users.doc(currentUser.uid).set({
          'email': email,
          'name': name,
          'password': password,
          'uid': currentUser.uid,
          // You can add more user data fields here
        });
      }
      return "Account created successfully";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        return "The password provided is too weak";
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        return "The account already exists for that email";
      }
      return "Error: ${e.message}";
    } catch (e) {
      print(e.toString());
      return "Error: ${e.toString()}";
    }
  }
}
