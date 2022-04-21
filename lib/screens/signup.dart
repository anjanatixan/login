import 'package:flutter/material.dart';
import 'package:login/screens/login.dart';

import 'home.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign Up",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 20),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "User Name",
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      hintStyle:
                          const TextStyle(fontSize: 20.0, color: Colors.white),
                      prefixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.person,
                            color: Colors.white,
                          ))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 40),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Password",
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      hintStyle:
                          const TextStyle(fontSize: 20.0, color: Colors.white),
                      prefixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.lock,
                            color: Colors.white,
                          ))),
                ),
              ),
              SizedBox(
                height: 40,
                width: 200,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home()));
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white)),
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.lightBlueAccent, fontSize: 15),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
