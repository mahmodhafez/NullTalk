import 'package:chat_app/constants.dart';
import 'package:chat_app/helper/SnakeBar.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../widgets/custom_text_field.dart';

class LoginView extends StatefulWidget {
  LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
                    'Sign in',
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
                    isObscure: true,
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
                    title: 'Login',
                    function: () async {
                      if (formKey.currentState!.validate()) {
                        isLoading = true;
                        setState(() {});
                        try {
                          await loginUser();

                          Navigator.pushNamed(
                            context,
                            'ChatView',
                            arguments: email,
                          );
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'user-not-found') {
                            showSnakeBar(
                              context,
                              'No user found for that email',
                            );
                          } else if (e.code == 'wrong-password') {
                            showSnakeBar(
                              context,
                              'Wrong password provided for that user.',
                            );
                          }
                        } catch (e) {
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
                      Text('Don\'t have an account?'),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'RegisterView');
                        },
                        child: Text('Register'),
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

  Future<void> loginUser() async {
    UserCredential credential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email!, password: password!);
  }
}
