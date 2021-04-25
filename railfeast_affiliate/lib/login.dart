import 'package:flutter/material.dart';
import 'package:railfeast_affliate/affiliateNavigation.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xff191722),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 70.0,
                  ),
                  Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                          image: AssetImage('assets/images/logo.png'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  SizedBox(
                    height: 70.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 80.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                      color: Color(0xff34333c),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.account_box,
                          color: Colors.white,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.5),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                        ),
                        labelText: 'User Name',
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Stack(
                    overflow: Overflow.visible,
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 80.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                          color: Color(0xff34333c),
                        ),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.add_moderator,
                              color: Colors.white,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.5),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20.0)),
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: MediaQuery.of(context).size.width / 40,
                        right: MediaQuery.of(context).size.width / 12,
                        child: Container(
                          height: 100.0,
                          width: 100.0,
                          child: Icon(
                            Icons.play_circle_fill,
                            color: Colors.white,
                            size: 50.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      print("Pressed forgot password!");
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 1.8,
                        top: 28.0,
                        bottom: 28.0,
                      ),
                      child: Text(
                        "Forgot Password ?",
                        style: TextStyle(color: Colors.white54, fontSize: 20.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width / 1.5),
                    child: GestureDetector(
                      onTap: () {
                        print("Accepted TnC");
                      },
                      child: ElevatedButton(
                        onPressed: () {
                          print("Submit");
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AffiliateHome(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xfff06b6c),
                          minimumSize: Size(
                            112,
                            41,
                          ),
                        ),
                        child: Text("Submit"),
                      ),
                    ),
                  ),
                  SizedBox(height: 137.0),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "By Continuing, you agree to ",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Terms & conditions",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10.0,
                                ),
                              ),
                              Text(
                                "Privacy Policy",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10.0,
                                ),
                              ),
                              Text(
                                "Content Policy",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
