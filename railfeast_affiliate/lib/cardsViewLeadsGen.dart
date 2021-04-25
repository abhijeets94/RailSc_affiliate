import 'package:flutter/material.dart';
import 'package:railfeast_affliate/leadsGenerated.dart';

class CardViewLG extends StatefulWidget {
  @override
  _CardViewLGState createState() => _CardViewLGState();
}

class _CardViewLGState extends State<CardViewLG> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height / 12),
        child: Container(
          margin: EdgeInsets.all(
            20.0,
          ),
          child: AppBar(
            elevation: 0.0,
            automaticallyImplyLeading: false,
            backgroundColor: Color(0xff191722),
            actions: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LeadsGenerated(),
                    ),
                  );
                },
                child: Icon(
                  Icons.announcement,
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xff191722),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 12,
                margin: EdgeInsets.only(top: 5.0, left: 40.0, right: 40.0),
                decoration: BoxDecoration(
                  color: Color(0xff21212b),
                  borderRadius: BorderRadius.circular(2.0),
                ),
                child: Container(
                  margin: EdgeInsets.all(18.0),
                  child: Text(
                    "Due to privacy reasons, we are not showing all the details of order placed by any customer.",
                    overflow: TextOverflow.visible,
                    style: const TextStyle(
                        color: const Color(0xffc2c2c0),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontSize: 13.0),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              // Container(
              //   margin: EdgeInsets.only(
              //     left: MediaQuery.of(context).size.width / 1.34,
              //   ),
              //   child: Row(
              //     children: [
              //       Text(
              //         "Today",
              //         style: TextStyle(
              //             color: Color(0xffc2c2c0),
              //             fontWeight: FontWeight.w400,
              //             fontFamily: "Roboto",
              //             fontStyle: FontStyle.normal,
              //             fontSize: 14.0),
              //       ),
              //       Icon(
              //         Icons.arrow_drop_down,
              //         color: Color(0xffc2c2c0),
              //         size: 40.0,
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsets.only(
              //     left: MediaQuery.of(context).size.width / 1.30,
              //   ),
              //   child: Text(
              //     "|",
              //     style: TextStyle(
              //       fontSize: 70.0,
              //       fontWeight: FontWeight.w100,
              //       color: Color(0xffc2c2c0),
              //     ),
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsets.only(
              //     left: MediaQuery.of(context).size.width / 1.34,
              //   ),
              //   child: Row(
              //     children: [
              //       Text(
              //         "Today",
              //         style: TextStyle(
              //             color: Color(0xffc2c2c0),
              //             fontWeight: FontWeight.w400,
              //             fontFamily: "Roboto",
              //             fontStyle: FontStyle.normal,
              //             fontSize: 14.0),
              //       ),
              //       Icon(
              //         Icons.arrow_drop_down,
              //         color: Color(0xffc2c2c0),
              //         size: 40.0,
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsets.only(
              //     left: MediaQuery.of(context).size.width / 1.46,
              //   ),
              //   child: Row(
              //     children: [
              //       Text(
              //         "Yesterday",
              //         style: TextStyle(
              //             color: Color(0xffc2c2c0),
              //             fontWeight: FontWeight.w400,
              //             fontFamily: "Roboto",
              //             fontStyle: FontStyle.normal,
              //             fontSize: 14.0),
              //       ),
              //       Icon(
              //         Icons.arrow_drop_down,
              //         color: Color(0xffc2c2c0),
              //         size: 40.0,
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsets.only(
              //     left: MediaQuery.of(context).size.width / 1.93,
              //   ),
              //   child: Row(
              //     children: [
              //       Text(
              //         "Day before yesterday",
              //         style: TextStyle(
              //             color: Color(0xffc2c2c0),
              //             fontWeight: FontWeight.w400,
              //             fontFamily: "Roboto",
              //             fontStyle: FontStyle.normal,
              //             fontSize: 14.0),
              //       ),
              //       Icon(
              //         Icons.arrow_drop_down,
              //         color: Color(0xffc2c2c0),
              //         size: 40.0,
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 80.0,
              // ),
              // Container(
              //   child: Image.asset(
              //     'assets/images/calender.png',
              //   ),
              // ),
              // SizedBox(
              //   height: 10.0,
              // ),
              // Container(
              //   height: MediaQuery.of(context).size.height / 8,
              //   margin: EdgeInsets.only(top: 5.0, left: 40.0, right: 40.0),
              //   decoration: BoxDecoration(
              //     color: Color(0xff21212b),
              //     borderRadius: BorderRadius.circular(2.0),
              //   ),
              //   child: Container(
              //     margin: EdgeInsets.all(20.0),
              //     child: Text(
              //       "No. count showing in blue circle is leads generated on that particular date, if anyone clicks on that it will show list of leads generated on that date",
              //       overflow: TextOverflow.visible,
              //       style: const TextStyle(
              //           color: const Color(0xffc2c2c0),
              //           fontWeight: FontWeight.w400,
              //           fontFamily: "Roboto",
              //           fontStyle: FontStyle.normal,
              //           fontSize: 13.0),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 10.0,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
