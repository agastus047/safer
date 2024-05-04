import 'package:flutter/material.dart';
import 'package:safer/form.dart';

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
                        width: width*0.1,
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
                    width: width * 0.7,
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
                        width: width*0.1,
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
                    width: width * 0.7,
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
            SizedBox(height: height * 0.04),
            Container(
              width: width * 0.7,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 13, 99, 168),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Currently Approaching",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Chinnakkada Jn, Kollam",
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  SizedBox(height: 8), // Add some space between the text and the warning icon
                  Row(
                    children: [
                      Icon(
                        Icons.warning,
                        color: Colors.yellow,
                      ),
                      SizedBox(width: 8), // Add some space between the icon and the text
                      Text(
                        "Accident-prone areas: 2", // Replace XX with the actual number
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16), // Add some space between the warning icon and the button
                  ElevatedButton(
                    onPressed: () {
                      // Add functionality to make emergency contact here
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30), // Set button border radius
                      ),
                    ),
                    child: Text(
                      "Emergency Contact",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: height * 0.08),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FormDemo()),
                  );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // Set button border radius
                ),
                minimumSize: Size(200, 70),
              ),
              icon: Icon(Icons.report), // Replace with the desired icon
              label: Text(
                "Report Accident",
                style: TextStyle(
                  fontSize: 20,
                ),
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