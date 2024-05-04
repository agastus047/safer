import 'package:flutter/material.dart';
import 'package:safer/CRUD.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Accident Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FormDemo(),
    );
  }
}

class FormDemo extends StatefulWidget {
  const FormDemo({Key? key}) : super(key: key);

  @override
  _FormDemoState createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController vehiclePlateNumberController = TextEditingController();
  TextEditingController secondVehiclePlateNumberController =
      TextEditingController();
  TextEditingController accidentLocationController = TextEditingController();
  TextEditingController accidentDescriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register your accident details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: vehiclePlateNumberController,
                decoration: InputDecoration(labelText: 'Vehicle Plate Number'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your vehicle plate number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: secondVehiclePlateNumberController,
                decoration:
                    InputDecoration(labelText: 'Second Vehicle Plate Number'),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: accidentLocationController,
                decoration: InputDecoration(labelText: 'Accident Location'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the accident location';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: accidentDescriptionController,
                decoration: InputDecoration(labelText: 'Accident Description'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the accident description';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Get values from the controllers
                    String name = nameController.text;
                    String vehiclePlateNumber =
                        vehiclePlateNumberController.text;
                    String secondVehiclePlateNumber =
                        secondVehiclePlateNumberController.text;
                    String accidentLocation = accidentLocationController.text;
                    String accidentDescription =
                        accidentDescriptionController.text;

                    // Pass values to the writeTo function in CRUD1
                    Crud1.writeTo(
                      name,
                      vehiclePlateNumber,
                      secondVehiclePlateNumber,
                      accidentLocation,
                      accidentDescription,
                    );

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Processing Data'),
                      ),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Clean up the controllers when the widget is disposed
    nameController.dispose();
    vehiclePlateNumberController.dispose();
    secondVehiclePlateNumberController.dispose();
    accidentLocationController.dispose();
    accidentDescriptionController.dispose();
    super.dispose();
  }
}
