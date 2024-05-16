import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
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
            child: Container(
              height: MediaQuery.of(context).size.height/1.2,
              width: MediaQuery.of(context).size.width/3,              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
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
                        Text(
                          'Weather App',
                          style: TextStyle(
                            height: 2, 
                            fontSize: 50,
                            color: const Color.fromARGB(255, 1, 39, 104),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),                    
                  ],
                ),                
              ),
            ),
        ),
      ),
    );
  }   
}