import 'package:contactapp/screens/contact.dart';
import 'package:contactapp/widgets/information_widget.dart';
import 'package:flutter/material.dart';

import '../utils/data.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({super.key});

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    void addContact() {
      String name = nameController.text;
      String surname = surnameController.text;
      String phoneNumber = phoneNumberController.text;

      if (name.isNotEmpty && surname.isNotEmpty && phoneNumber.isNotEmpty) {
        Contact newContact = Contact(
          name: name,
          surname: surname,
          phoneNumber: phoneNumber,
        );

        setState(() {
          contacts.add(newContact);
        });

        nameController.clear();
        surnameController.clear();
        phoneNumberController.clear();
      }
    }

    @override
    void dispose() {
      nameController.dispose();
      surnameController.dispose();
      phoneNumberController.dispose();
      super.dispose();
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              addContact();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ContactPage(),
                ),
              );
            },
            icon: Icon(Icons.check),
          ),
        ],
      ),
      body: Column(
        children: [
          mylineText1(),
          Email1(),
          mylineText2(),
          Email2(),
          mylineText3(),
          PhoneNumber(),
        ],
      ),
    );
  }
}
