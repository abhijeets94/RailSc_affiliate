import 'package:flutter/material.dart';

class LeadsGeneratedContent extends StatefulWidget {
  @override
  _LeadsGeneratedContentState createState() => _LeadsGeneratedContentState();
}

class _LeadsGeneratedContentState extends State<LeadsGeneratedContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Row(
                            //row for order ID
                            children: [
                              Text(
                                "ORDER ID #",
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color(0xfff06b6c),
                                  fontSize: 13.5,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              Text(
                                "3423***",
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color(0xfff06b6c),
                                  fontSize: 13.5,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "DOD: 2020-07-08 13:33",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color(0xffc2c2c0),
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "₹",
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color(0xfff06b6c),
                                  fontSize: 13.5,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              Text(
                                "212",
                                style: const TextStyle(
                                    color: const Color(0xffc2c2c0),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 13.5),
                              ),
                            ],
                          ),
                          Text(
                            "Cash on Delivery",
                            style: const TextStyle(
                                color: const Color(0xffc2c2c0),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                                fontSize: 13.5),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Text(
                            "Customer Name: ",
                            style: TextStyle(
                                color: Color(0xff807c96),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                                fontSize: 13.5),
                          ),
                          Text(
                            "Nihal Gupta",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color(0xfff06b6c),
                              fontSize: 13.5,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text(
                            "Train No: ",
                            style: TextStyle(
                                color: Color(0xff807c96),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                                fontSize: 13.5),
                          ),
                          Text(
                            "02296/Sanghamitra Express",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Colors.white,
                              fontSize: 13.5,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Station: ",
                                style: TextStyle(
                                    color: Color(0xff807c96),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 13.5),
                              ),
                              Container(
                                child: Text(
                                  "Patna Jn",
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Colors.white,
                                    fontSize: 13.5,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                child: Text(
                                  "Status: ",
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Color(0xfff06b6c),
                                    fontSize: 13.5,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                child: Text("Ready"),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(
          height: 1,
          color: Colors.grey,
        ),
      ],
    );
  }
}
