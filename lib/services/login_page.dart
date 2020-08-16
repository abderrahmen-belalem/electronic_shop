import 'package:electronic_app/home.dart';
import 'package:electronic_app/services/Animation/FadeAnimation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        Container(
          height: 200,
          child: Stack(
            children: <Widget>[
              Positioned(
                  child: FadeAnimation(
                    1,
                    Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                      image: AssetImage('assets/background-image.png')
                )
              ),
              ),
                  )
              )
            ],
          ),
        ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              FadeAnimation(
                1,
                Text(
                  'Hello there, \nwelcome back',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
                SizedBox(height: 40),
                FadeAnimation(
                  1,
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent
                    ),
                    child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.grey[100]
                            )
                          )
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Username',
                            hintStyle: TextStyle(
                              color: Colors.grey
                            )
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.grey[100]
                                )
                            )
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                  color: Colors.grey
                              )
                          ),
                        ),
                      )
                    ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                FadeAnimation(
                  1,
                  Center(
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.deepPurple
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                FadeAnimation(
                  1,
                   GestureDetector(
                     onTap: () {
                       Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => HomePage(),
                         ),
                       );
                     },
                     child: Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 60),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromRGBO(49, 39, 79, 1)
                      ),
                      child: Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                      ),
                  ),
                   ),
                ),
                SizedBox(height: 20),
                FadeAnimation(
                  1,
                  Center(
                    child: Text(
                      'Create Account',
                      style: TextStyle(
                        color: Colors.deepPurple
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
