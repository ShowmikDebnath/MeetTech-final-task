import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  const Input({Key? key}) : super(key: key);

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  TextEditingController serialIdController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController giftController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: serialIdController,
              decoration: InputDecoration(labelText: 'Serial ID'),
            ),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextFormField(
              controller: addressController,
              decoration: InputDecoration(labelText: 'Address'),
            ),
            TextFormField(
              controller: phoneNumberController,
              decoration: InputDecoration(labelText: 'Phone Number'),
              keyboardType: TextInputType.phone,
            ),
            TextFormField(
              controller: giftController,
              decoration: InputDecoration(labelText: 'Gift'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle form submission here
                String serialId = serialIdController.text;
                String name = nameController.text;
                String address = addressController.text;
                String phoneNumber = phoneNumberController.text;
                String gift = giftController.text;

                // You can perform further actions with the input data
                // For example, print it to the console
                print('Serial ID: $serialId');
                print('Name: $name');
                print('Address: $address');
                print('Phone Number: $phoneNumber');
                print('Gift: $gift');
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Clean up the controllers when the widget is disposed.
    serialIdController.dispose();
    nameController.dispose();
    addressController.dispose();
    phoneNumberController.dispose();
    giftController.dispose();
    super.dispose();
  }
}
