import 'package:flutter/material.dart';
import 'package:flutter_ui_nice/const/gradient_const.dart';
import 'package:flutter_ui_nice/const/icons.dart';
import 'package:flutter_ui_nice/page/signup/widgets/signup_apbar.dart';
import 'package:flutter_ui_nice/page/signup/widgets/signup_arrow_button.dart';

class SignPageFive extends StatefulWidget {
  @override
  _SignPageFiveState createState() => _SignPageFiveState();
}

class _SignPageFiveState extends State<SignPageFive> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double statusbarHeight = MediaQuery.of(context).padding.top;
    final bool isSelected = false;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: SignupApbar(
        title: "LOGIN",
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: SIGNUP_BACKGROUND,
            ),
          ),
          Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      top: 80,
                      left: 70,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              "LOGIN",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                wordSpacing: 1.5,
                                color: Colors.black87,
                              ),
                            ),
                            Text(
                              "SIGNUP",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                wordSpacing: 1.5,
                                color: Colors.black26,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 2 + 50,
                          width: double.infinity,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                height: MediaQuery.of(context).size.height / 2,
                                width: double.infinity,
                                padding: EdgeInsets.all(30),
                                decoration: BoxDecoration(
                                  gradient: SIGNUP_CARD_BACKGROUND,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                      15,
                                    ),
                                    bottomLeft: Radius.circular(
                                      15,
                                    ),
                                  ),
                                  color: Colors.red,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Welcome",
                                      style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w400,
                                        wordSpacing: 2,
                                        letterSpacing: 2,
                                      ),
                                    ),
                                    Text(
                                      "back!",
                                      style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w400,
                                        wordSpacing: 2,
                                        letterSpacing: 2,
                                      ),
                                    ),
                                    Expanded(child: Container()),
                                    emailTextFieldWidget(),
                                    SizedBox(
                                      height: 1.5,
                                      child: Container(
                                        color: Colors.black,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: passwordTextFieldWidget(),
                                    ),
                                    Text(
                                      "NEXT",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: 25,
                                left: 30,
                                child: SignUpArrowButton(
                                  icon: IconData(
                                    arrow_right,
                                    fontFamily: "Icons",
                                  ),
                                  iconSize: 10,
                                  onTap: () => print("Login tapped"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget emailTextFieldWidget() {
    return TextField(
      controller: _emailController,
      decoration: new InputDecoration(
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 30.0),
          child: Icon(IconData(0xe902, fontFamily: 'Icons'),
              color: Color(0xff35AA90), size: 10.0),
        ),
        hintText: 'Email',
        labelStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 14,
        ),
        hintStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        border: InputBorder.none,
      ),
    );
  }

  Widget passwordTextFieldWidget() {
    return TextField(
      controller: _passwordController,
      decoration: new InputDecoration(
        hintText: 'Password',
        labelStyle: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),
        hintStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        border: InputBorder.none,
      ),
      obscureText: true,
    );
  }
}