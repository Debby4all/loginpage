import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:loginpage/reusable_widgets/resusable_widgets.dart';
import 'package:loginpage/screens/home_screen.dart';
import 'package:loginpage/utils/colors_utils.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    extendBodyBehindAppBar: true,
    appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Text(
        "Sign Up",
        style: TextStyle(
          fontSize: 24, fontWeight: FontWeight.bold),
      ),
      ),
body: Container(
   width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient:LinearGradient(
          colors:[
      hexStingToColor("CB2B93"),
      hexStingToColor("9546C4"),
      hexStingToColor("5E61F4")
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            20, MediaQuery.of(context).size.height * 0.2, 10, 0),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Username", Icons.person_outline, false,
                _userNameTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter E-mail ID", Icons.person_outline, false,
                _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Password", Icons.lock_outline, true,
                _passwordTextController),
                const SizedBox(
                height:20,
                ),
                signInSignUpButton(context, false, () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: ((context) => HomeScreen())));
                })
              ],
            )
      ),
),
  ));
  }
}