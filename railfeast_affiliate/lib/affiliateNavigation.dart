import 'package:flutter/material.dart';
import 'package:railfeast_affliate/leadsGenerated.dart';
import 'package:railfeast_affliate/login.dart';

class AffiliateHome extends StatefulWidget {
  @override
  _AffiliateHomeState createState() => _AffiliateHomeState();
}

class _AffiliateHomeState extends State<AffiliateHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff191722),
          elevation: 0.0,
          leading: Icon(
            Icons.arrow_back,
            color: Color(0xffc2c2c0),
          ),
        ),
        backgroundColor: Color(0xff191722),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 40.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 88.0,
                        height: 88.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/profileImage.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                left: 18.0,
                              ),
                              child: Text(
                                "Nitish Kumar",
                                style: TextStyle(
                                    color: Color(0xfff06b6c),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 20.0),
                              ),
                            ),
                            Container(
                              child: Text(
                                "9905680240",
                                style: TextStyle(
                                    color: Color(0xffc2c2c0),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 17.0),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 20.0,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Edit Profile",
                                    style: TextStyle(
                                        color: Color(0xffc2c2c0),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Roboto",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 17.0),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Image.asset(
                                    'assets/images/editProfileArrow.png',
                                    scale: 5,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Divider(
                  height: 1,
                  color: Color(0xf2c2c2c0),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.0,
                      ),
                      NavigationBarMenu(
                        menuIcon: Icons.perm_device_info,
                        menuText: "How it works",
                        iconTextColor: Color(0xfff06b6c),
                        onPress: () {
                          print("HOW IT WORKS!");
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      NavigationBarMenu(
                        menuIcon: Icons.mail,
                        menuText: "Leads Generated",
                        iconTextColor: Color(0xffc2c2c0),
                        onPress: () {
                          print("Leads Generated");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LeadsGenerated(),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      NavigationBarMenu(
                        menuIcon: Icons.share,
                        menuText: "Payments & Payment History",
                        iconTextColor: Color(0xffc2c2c0),
                        onPress: () {
                          print("Payments and Payment History");
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      NavigationBarMenu(
                        menuIcon: Icons.subject,
                        menuText: "Statistics",
                        iconTextColor: Color(0xffc2c2c0),
                        onPress: () {
                          print("Stats");
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      NavigationBarMenu(
                        menuIcon: Icons.account_circle,
                        menuText: "Account settings",
                        iconTextColor: Color(0xffc2c2c0),
                        onPress: () {
                          print("Account Settings");
                        },
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                  color: Color(0xf2c2c2c0),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.0,
                      ),
                      NavigationBarMenu(
                        menuIcon: Icons.call,
                        iconTextColor: Color(0xffc2c2c0),
                        menuText: "Call us",
                        onPress: () {
                          print("CAll us");
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      NavigationBarMenu(
                        menuIcon: Icons.mail_outline,
                        iconTextColor: Color(0xffc2c2c0),
                        menuText: "Mail Us",
                        onPress: () {
                          print("mail us");
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      NavigationBarMenu(
                        menuIcon: Icons.headset_mic,
                        iconTextColor: Color(0xffc2c2c0),
                        menuText: "Help & Support",
                        onPress: () {
                          print("Help & Support");
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      NavigationBarMenu(
                        menuIcon: Icons.star_rate,
                        iconTextColor: Color(0xffc2c2c0),
                        menuText: "Rate Us",
                        onPress: () {
                          print("Rate Us");
                        },
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                  color: Color(0xf2c2c2c0),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.0,
                      ),
                      NavigationBarMenu(
                        menuIcon: Icons.verified_user,
                        iconTextColor: Color(0xffc2c2c0),
                        menuText: "Privacy Policy",
                        onPress: () {
                          print("Privacy policy");
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      NavigationBarMenu(
                        menuIcon: Icons.speaker_notes,
                        iconTextColor: Color(0xffc2c2c0),
                        menuText: "Terms and condition",
                        onPress: () {
                          print("Terms and condition");
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      NavigationBarMenu(
                        menuIcon: Icons.logout,
                        iconTextColor: Color(0xffc2c2c0),
                        menuText: "Log out",
                        onPress: () {
                          print("Log out");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()),
                          );
                        },
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "RailFeast",
                        style: TextStyle(
                            color: Color(0xfff06b6c),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto",
                            fontStyle: FontStyle.normal,
                            fontSize: 20.0),
                      ),
                      Text(
                        "V1.0.2",
                        style: TextStyle(
                            color: Color(0xffc2c2c0),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto",
                            fontStyle: FontStyle.normal,
                            fontSize: 17.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NavigationBarMenu extends StatelessWidget {
  final IconData menuIcon;
  final String menuText;
  final Function onPress;
  final Color iconTextColor;

  NavigationBarMenu(
      {this.menuIcon, this.iconTextColor, this.menuText, this.onPress});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        child: Row(
          children: [
            Icon(
              menuIcon,
              color: Color(0xff34333c),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              menuText,
              style: TextStyle(
                  color: iconTextColor,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto",
                  fontStyle: FontStyle.normal,
                  fontSize: 17.0),
            ),
          ],
        ),
      ),
    );
  }
}
