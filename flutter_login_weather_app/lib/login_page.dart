import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  bool _isHidden = true;
  bool _isHoverLogin = false;
  bool _isHoverFgtPass = false;
  bool _isHoverSignUp = false;

  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/login-background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Container(
                height: MediaQuery.of(context).size.height/1.2,
                width: MediaQuery.of(context).size.width/3,              
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  color: Colors.white.withOpacity(0.4),
                ),
                child: Form(
                  child: Column(
                    children: [
                      Column(
                        children: <Widget> [
                          Image.asset(
                            'assets/images/weather-login-icon.jpg',
                            height: 150,
                            fit:BoxFit.fill
                          ),
                          const Text(
                            'Sign In',
                            style: TextStyle(
                              height: 2, 
                              fontSize: 50,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width/24),
                            const Text(
                              'Username',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black87
                              ),
                            )
                        ],
                      ),
                      const SizedBox(height: 3),
                      Row(
                        children: [
                          SizedBox(width: MediaQuery.of(context).size.width/24),
                          SizedBox(
                            width: MediaQuery.of(context).size.width/4,
                            child: const TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person),
                                border: OutlineInputBorder(),
                                hintText: 'Enter your username',
                                hintStyle: TextStyle(
                                  color: Colors.black45
                                )
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          SizedBox(width: MediaQuery.of(context).size.width/24),
                          const Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black87
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 3),
                      Row(
                        children: [
                          SizedBox(width: MediaQuery.of(context).size.width/24),
                          SizedBox(
                            width: MediaQuery.of(context).size.width/4,
                            child: TextField(
                              obscureText: _isHidden,
                              enableSuggestions: false,
                              autocorrect: false,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.key),
                                suffix: InkWell(
                                    onTap: _togglePasswordView,
                                    child: Icon(
                                            _isHidden 
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                          ),
                                    ),
                                border: const OutlineInputBorder(),
                                hintText: 'Enter your password',
                                hintStyle: const TextStyle(
                                  color: Colors.black45
                                )
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          SizedBox(width: MediaQuery.of(context).size.width/4),
                          InkWell(
                            onTap: () => (),
                            onHover: (value) => (
                              setState(() {
                                _isHoverFgtPass = value;
                              })
                            ),
                            child: Text(
                              'Forgot password?',
                              style: TextStyle(
                                fontSize: 10,
                                color: (_isHoverFgtPass) ? const Color.fromARGB(255, 7, 120, 212) : Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width/4 - 5,
                            height: MediaQuery.of(context).size.width/40,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              onHover: (value) => (
                                setState(() {
                                  _isHoverLogin = value;
                                })
                              ),
                              child: Text(
                                      'Login',
                                      style: TextStyle(
                                        color: (_isHoverLogin) ? const Color.fromARGB(255, 7, 120, 212) : Colors.black
                                      )
                              ),
                              onPressed: () => (),
                            )
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                              child: Divider(
                                indent: MediaQuery.of(context).size.width/15,
                                color: Colors.black26,
                              )
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'or',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black87
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                              child: Divider(
                                endIndent: MediaQuery.of(context).size.width/15,
                                color: Colors.black26,
                              )
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Material(
                            clipBehavior: Clip.antiAliasWithSaveLayer,    //this made the button go circular
                            shape: const CircleBorder(),
                            child: InkWell(
                              onTap: () => (),
                              child: Ink.image(
                                image: const AssetImage('assets/images/google_login.jpg'),
                                height: 40,
                                width: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Material(
                            clipBehavior: Clip.antiAliasWithSaveLayer,    
                            shape: const CircleBorder(),
                            child: InkWell(
                              onTap: () => (),
                              child: Ink.image(
                                image: const AssetImage('assets/images/linkedin_icon.jpg'),
                                height: 40,
                                width: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Material(
                            clipBehavior: Clip.antiAliasWithSaveLayer,    
                            shape: const CircleBorder(),
                            child: InkWell(
                              onTap: () => (),
                              child: Ink.image(
                                image: const AssetImage('assets/images/twitter_icon.jpg'),
                                height: 40,
                                width: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 70),
                      Column(
                        children: [
                          const Text(
                            'or Sign Up using',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black87
                            ),
                          ),
                          const SizedBox(height: 15),
                          InkWell(
                            onTap: () => (),
                            onHover: (value) => (
                              setState(() {
                                _isHoverSignUp = value;
                              })
                            ),
                            child: Text(
                                    'SIGN UP',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: (_isHoverSignUp) ? const Color.fromARGB(255, 7, 120, 212) : Colors.black
                                    ),
                                  ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }   
}