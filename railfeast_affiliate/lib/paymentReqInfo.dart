import 'package:flutter/material.dart';

import 'leadsGenerated.dart';

class PaymentRequestInfo extends StatelessWidget {
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
                height: MediaQuery.of(context).size.height / 7,
                margin: EdgeInsets.only(top: 5.0, left: 40.0, right: 40.0),
                decoration: BoxDecoration(
                  color: Color(0xff21212b),
                  borderRadius: BorderRadius.circular(2.0),
                ),
                child: Container(
                  margin: EdgeInsets.all(14.0),
                  child: Text(
                    "Minimum balance in your wallet to make a payment request must be 1000 rs. Please recheck bank account details mentioned is correct, company will not be liable for any mistake if bank account details mentioned is wrong.",
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
            ],
          ),
        ),
      ),
    );
  }
}
