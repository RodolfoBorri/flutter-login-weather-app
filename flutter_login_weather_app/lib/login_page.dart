import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  bool _isHidden = true;

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
                          SizedBox(width: MediaQuery.of(context).size.width/24),
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
                      const SizedBox(height: 30),
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width/4 - 5,
                            height: MediaQuery.of(context).size.width/50,
                            child: ElevatedButton(
                              child: const Text('Login'), 
                              onPressed: () => (),
                            )
                          ),
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