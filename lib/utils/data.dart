import 'package:flutter/material.dart';

class Contact {
   String name;
   String surname;
   String phoneNumber;

  Contact({required this.name, required this.surname, required this.phoneNumber});
}

 List<Contact> contacts = [
                Contact(name: "John", surname: "Doe", phoneNumber: "+92 123456789"),
                Contact(name: "Jane",surname: "Smith", phoneNumber: "+92 987654321"),
                // Add more contacts as needed
              ];

final TextEditingController nameController = TextEditingController();
final TextEditingController surnameController = TextEditingController();
final TextEditingController phoneNumberController = TextEditingController();
