import 'package:flutter/material.dart';
import 'package:loginpage/screens/signin_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text("Log Out"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => const SignInScreen()),
              ),
            );
          },
        ),
      ),
    );
  }
}
