import 'package:contactapp/screens/contact.dart';
import 'package:contactapp/utils/data.dart';
import 'package:flutter/material.dart';

import 'information.dart';

class ContactInfo extends StatefulWidget {
  final Contact contact;

  const ContactInfo({super.key, required this.contact});

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {

  @override
  void dispose() {
    nameController.dispose();
    surnameController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    // Fill the text fields with the contact's data if available
    if (widget.contact != null) {
      nameController.text = widget.contact.name;
      surnameController.text = widget.contact.surname;
      phoneNumberController.text = widget.contact.phoneNumber;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 100,
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                CircleAvatar(
                  child: IconButton(
                      icon: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        contacts.remove(widget.contact);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ContactPage(),
                          ),
                        );
                      }),
                  backgroundColor: Colors.red,
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  child: IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const InformationPage(),
                          ),
                        );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                '${widget.contact.name}  ${widget.contact.surname}',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
