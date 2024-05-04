import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
// ignore: unnecessary_import
import 'package:get/get_core/src/get_main.dart';
import 'package:safer/login.dart';
import 'package:safer/page2.dart';
import 'package:safer/form.dart';

class Crud {
  static writeToFirestore(String currentLocation, String destination) async {
    try {
      // Access the Firestore instance
      FirebaseFirestore firestore = FirebaseFirestore.instance;

      // Add data to a collection
      await firestore.collection('locations').add({
        'location1': currentLocation,
        'location2': destination,
        // Add more fields as needed
      });

      print('Data written to Firestore successfully');
      Get.snackbar('Route set', 'let\'s go');

      // Navigate to Page2 after successful login
      Get.offAll(() => LoginPage());
    } catch (e) {
      print('Error writing to Firestore: $e');
      // Handle error appropriately
    }
  }
}

class Crud1 {
  static writeTo(String name, String vehicle1, String vehicle2,
      String accident_loc, String descrip) async {
    try {
      // Access the Firestore instance
      FirebaseFirestore firestore = FirebaseFirestore.instance;

      // Add data to a collection
      await firestore.collection('details').add({
        'type': name,
        'vehicle1': vehicle1,
        'vehicle2': vehicle2,
        'location': accident_loc,
        'discription': descrip,

        // Add more fields as needed
      });
    } catch (e) {
      print('Error writing accident data to Firestore: $e');
      // Handle error appropriately
    }
  }
}
