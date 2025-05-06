import 'package:chat_app/widgets/custom_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../constants.dart';
import '../helper/SnakeBar.dart';
import '../widgets/custom_text_field.dart';

class RegisterView extends StatefulWidget {
  RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  String? email;
  String? password;
  GlobalKey<FormState> formKey = GlobalKey();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: kPrimaryColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: formKey,
              child: ListView(
                children: [
                  SizedBox(height: screenHeight * 0.1),
                  Center(
                    child: Image.asset(
                      kLogo,
                      height: 200,
                      width: 200,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Center(
                    child: Text(
                      'NullTalk',
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  CustomTextField(
                    onChange: (data) {
                      email = data;
                    },
                    icon: Icon(Icons.email),
                    title: 'Email',
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  CustomTextField(
                    onChange: (data) {
                      password = data;
                    },
                    icon: Icon(Icons.lock),
                    title: 'Password',
                  ),
                  SizedBox(height: screenHeight * 0.05),
                  CustomButton(
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                    title: 'Register',
                    function: () async {
                      if (formKey.currentState!.validate()) {
                        isLoading = true;

                        setState(() {});

                        try {
                          await registerUser();
                          showSnakeBar(context, 'Success');
                          Navigator.pop(context);
                        } on FirebaseAuthException catch (ex) {
                          if (ex.code == "weak-password") {
                            showSnakeBar(context, 'Weak Password');
                          } else if (ex.code == 'email-already-in-use') {
                            ;
                          }
                        } catch (ex) {
                          showSnakeBar(context, 'There was an error');
                        }
                        isLoading = false;
                        setState(() {});
                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?'),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Login'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> registerUser() async {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email!, password: password!);
  }
}
