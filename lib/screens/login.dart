import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login/screens/home.dart';
import 'package:login/screens/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(color: Colors.lightBlueAccent),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              const Text(
                "Citizens",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 80,
                    fontFamily: "Updock",
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "write messages",
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
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
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  obscureText: _isObscure,
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
                          )),
                      suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          })),
                ),
              ),
              const SizedBox(
                height: 20,
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
                      "Login",
                      style: TextStyle(
                          color: Colors.lightBlueAccent, fontSize: 15),
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Forgot password?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  decoration: TextDecoration.underline,
                  decorationThickness: 1,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 120,
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.white, width: 1),
                        ),
                      ),
                    ),
                    const Text(
                      "or login by",
                      style: TextStyle(color: Colors.white),
                    ),
                    Container(
                      width: 120,
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.white, width: 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.white,
                      height: 35,
                      width: 35,
                      child: const Icon(
                        FontAwesomeIcons.vk,
                        size: 20.0,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 35,
                        width: 35,
                        color: Colors.white,
                        child: const Icon(
                          FontAwesomeIcons.twitter,
                          size: 20,
                          color: Colors.lightBlueAccent,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 35,
                        width: 35,
                        color: Colors.white,
                        child: const Icon(
                          FontAwesomeIcons.facebook,
                          size: 20,
                          color: Colors.lightBlueAccent,
                        )),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Signup()));
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          decoration: TextDecoration.underline,
                          decorationThickness: 1,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
