import 'package:flutter/material.dart';
import 'package:railfeast_affliate/cardsViewLeadsGen.dart';
import 'package:railfeast_affliate/leadsGeneratedContent.dart';
import 'package:railfeast_affliate/paymentReqInfo.dart';

class LeadsGenerated extends StatefulWidget {
  @override
  _LeadsGeneratedState createState() => _LeadsGeneratedState();
}

class _LeadsGeneratedState extends State<LeadsGenerated> {
  static final List<String> items = <String>[
    'Today',
    'Tomorrow',
    'Yesterday',
  ];
  String value = items.first;

  DateTime selectedDate = DateTime.now();

  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
      helpText: 'Select booking date', // Can be used as title
      cancelText: 'Not now',
      confirmText: 'Confirm',
      builder: (context, child) {
        return Theme(
          data: ThemeData.dark(), // This will change to light theme.
          child: child,
        );
      },
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        print(selectedDate);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawerEnableOpenDragGesture: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height / 12),
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 2.0),
              blurRadius: 4.0,
            )
          ]),
          child: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
            ),
            title: Text("Leads Generated"),
            backgroundColor: Color(0xff191722),
            actions: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CardViewLG(),
                    ),
                  );
                },
                onDoubleTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentRequestInfo(),
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
                margin: EdgeInsets.all(19.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        "All leads",
                        style: const TextStyle(
                            color: const Color(0xfff06b6c),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto",
                            fontStyle: FontStyle.normal,
                            fontSize: 15.0),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () => _selectDate(context),
                            child: Container(
                              child: Icon(
                                Icons.calendar_today,
                                color: Color(0xff86868b),
                                size: 30.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            child: Text(
                              "Today",
                              style: const TextStyle(
                                  color: const Color(0xffc2c2c0),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12.0),
                            ),
                          ),
                          Container(
                            child: PopupMenuButton<String>(
                              color: Color(0xff191722),
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Color(0xff86868b),
                                size: 30.0,
                              ),
                              onSelected: (String result) {
                                switch (result) {
                                  case 'Today':
                                    print('Today clicked');
                                    break;
                                  case 'Tomorrow':
                                    print('Tomorrow clicked');
                                    break;
                                  case 'Yesterday':
                                    print('Yesterday');
                                    break;
                                  default:
                                }
                              },
                              itemBuilder: (BuildContext context) =>
                                  <PopupMenuEntry<String>>[
                                const PopupMenuItem<String>(
                                  value: 'today',
                                  child: Text(
                                    'today',
                                    style: TextStyle(
                                      color: Color(0xff86868b),
                                    ),
                                  ),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'tomorrow',
                                  child: Text(
                                    'tomorrow',
                                    style: TextStyle(
                                      color: Color(0xff86868b),
                                    ),
                                  ),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'yesterday',
                                  child: Text(
                                    'yesterday',
                                    style: TextStyle(
                                      color: Color(0xff86868b),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                height: 1.0,
                color: Color(0xff86868b),
              ),
              Container(
                // margin: EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    LeadsGeneratedContent(),
                    LeadsGeneratedContent(),
                    LeadsGeneratedContent(),
                    LeadsGeneratedContent(),
                    LeadsGeneratedContent(),
                    LeadsGeneratedContent(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
