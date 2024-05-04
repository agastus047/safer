import 'package:flutter/material.dart';

class MyPage2 extends StatelessWidget {
  MyPage2({Key? key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
  appBar: AppBar(
    backgroundColor: Color(0xFF1f2230),
    title: Text(
      'Safe travel',
      style: TextStyle(color: Colors.white),
    ),
    actions: [
      IconButton(
        icon: Icon(Icons.logout),
        onPressed: () {
          // AuthServices.signoutUser();
        },
        color: Colors.white,
      ),
    ],
  ),
  body: Container(
    color: Color(0xFF24293E), // Set background color here
    child: Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.04),
            Container(
              width: width * 0.9,
              padding: EdgeInsets.all(20),
              // decoration: BoxDecoration(
              //   color: Color.fromARGB(255, 0, 0, 0),
              //   borderRadius: BorderRadius.circular(30),
              //   boxShadow: [
              //     BoxShadow(
              //       color: Colors.grey.withOpacity(0.5),
              //       spreadRadius: 5,
              //       blurRadius: 7,
              //       offset: Offset(0, 3), // changes position of shadow
              //     ),
              //   ],
              // ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row( 
                    children: [
                      SizedBox(
                        width: width*0.25,
                      ),
                      Text(
                        "Choose Current Location",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.02),
                  Container(
                    width: width * 0.4,
                    height: height * 0.06,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 247, 249, 248),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      textAlign: TextAlign.start,
                      textAlignVertical: TextAlignVertical.center,
                      cursorHeight: 20,
                      decoration: InputDecoration(
                        hintText: 'Enter current location',
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  Row(
                    children: [
                      SizedBox(
                        width: width*0.25,
                      ),
                      Text(
                        "Choose Destination",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.02),
                  Container(
                    width: width * 0.4,
                    height: height * 0.06,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 247, 249, 248),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      textAlign: TextAlign.start,
                      textAlignVertical: TextAlignVertical.center,
                      cursorHeight: 20,
                      decoration: InputDecoration(
                        hintText: 'Enter destination',
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  SizedBox(
                    width: width * 0.2,
                    height: height * 0.06,
                    child: OutlinedButton(
                      onPressed: () {
                        // Assuming you have access to the current location and destination strings
                        // String currentLocation = getCurrentLocation();
                        // String destination = getDestination();

                        // Write data to Firestore
                        // Crud.writeToFirestore(currentLocation, destination);

                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => MyPage3()),
                        // );
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Color(0xFF6495ed),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: Text(
                        "Go",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.03),
            Text(
              "Because Every Mile Matters",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: height * 0.02),
            // Image.asset(
            //   'LOGO.png',
            //   width: width * 0.5,
            //   height: width * 0.4,
            // ),
          ],
        ),
      ),
    ),
  ),
);

  }
}