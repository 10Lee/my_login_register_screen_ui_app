import 'package:flutter/material.dart';
import 'package:loginandregistration_ui/constant.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
                    'Sign up',
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
                      'Name',
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
                          hintText: 'Enter your Name',
                          prefixIcon: Icon(
                            Icons.mail_outline_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
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
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50.0),
                      width: MediaQuery.of(context).size.width * .8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'REGISTER',
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
                          'Do you have an account?',
                          style: TextStyle(color: Colors.white),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Click here to login',
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
