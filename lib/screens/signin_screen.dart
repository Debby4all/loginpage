import 'package:flutter/material.dart';
import 'package:loginpage/reusable_widgets/resusable_widgets.dart';
import 'package:loginpage/screens/home_screen.dart';
import 'package:loginpage/screens/signup_screen.dart';
import 'package:loginpage/utils/colors_utils.dart';


class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: 
      Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient:LinearGradient(
          colors:[
      hexStingToColor("CB2B93"),
      hexStingToColor("9546C4"),
      hexStingToColor("5E61F4")
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: SingleChildScrollView (
        child: Padding (
          padding: EdgeInsets.fromLTRB(
          20, MediaQuery.of(context).size.height * 0.2, 10, 0),
      child: Column(
        children: <Widget>[
          logoWidget("assets/images/Logo.png"),
        SizedBox(
          height: 30,
        ),
        reusableTextField("Enter UserName", Icons.person_outline, false, 
          _emailTextController),
        SizedBox(
          height: 20,
             ),
            reusableTextField("Enter PassWord", Icons.lock_outline, true, 
          _passwordTextController),
            SizedBox(
          height: 20,
             ),
             signInSignUpButton(context, true, () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) => HomeScreen())));
             }),
             signUpOption()
           ],
         ),
       ) 
    ,)
   ),
  );
 }

Row signUpOption() {
  return Row (
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    const Text("Don't have an Account?",
    style: TextStyle(color: Colors.white70)),
    GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
      },
      child: const Text(
        " Sign Up",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    )
  ],
  ); 
  
}






}
 