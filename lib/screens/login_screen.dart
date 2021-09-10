import 'package:flutter/material.dart';
import 'package:loginandregistration_ui/constant.dart';
import 'package:loginandregistration_ui/screens/registration_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: SafeArea(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * .8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 50.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 8.0),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.white),
                        onChanged: (value) {},
                        decoration: kTextInputDecoration.copyWith(
                          hintText: 'Enter your Email',
                          prefixIcon: Icon(
                            Icons.mail_outline_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 35.0),
                    Text(
                      'Password',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 8.0),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: TextField(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        obscureText: true,
                        onChanged: (value) {},
                        decoration: kTextInputDecoration.copyWith(
                            hintText: 'Enter your Password',
                            prefixIcon: Icon(
                              Icons.vpn_key_outlined,
                              color: Colors.white,
                            )),
                      ),
                    )
                  ],
                ),
                Container(
                  alignment: Alignment.topRight,
                  padding: EdgeInsets.all(0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Theme(
                      data: ThemeData(unselectedWidgetColor: Colors.white),
                      child: Checkbox(
                        value: false,
                        onChanged: (value) {
                          setState(() {});
                        },
                      ),
                    ),
                    Text(
                      'Remember me',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      width: MediaQuery.of(context).size.width * .8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account yet?',
                          style: TextStyle(color: Colors.white),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegistrationScreen()));
                          },
                          child: Text(
                            'Register here',
                            style: TextStyle(color: Colors.lightGreenAccent),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
