import 'package:contactapp/screens/contact_info.dart';
import 'package:contactapp/screens/information.dart';
import 'package:contactapp/utils/data.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    if (contacts.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 1,
          backgroundColor: Colors.white,
          title: Text(
            'Contacts',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search, color: Colors.black),
              onPressed: () {

              },
            ),
            PopupMenuButton(
              icon: Icon(Icons.more_vert, color: Colors.black),
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    child: Text('Sort'),
                    value: 'sort',
                  ),
                  PopupMenuItem(
                    child: Text('Delete All'),
                    value: 'deleteAll',
                  ),
                ];
              },
              onSelected: (value) {
                if (value == 'sort') {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Sort'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              title: Text('Sort A-Z'),
                              onTap: () {
                                // Perform A-Z sorting
                                Navigator.pop(context); // Close the dialog
                              },
                            ),
                            ListTile(
                              title: Text('Sort Z-A'),
                              onTap: () {
                                // Perform Z-A sorting
                                Navigator.pop(context); // Close the dialog
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  );
                } else if (value == 'deleteAll') {
                  setState(() {
                    contacts.clear();
                  });
                }
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                "https://cdn.onlinewebfonts.com/svg/img_412721.png",
                height: 140.0,
                width: 140.0,
              ),
              SizedBox(height: 10),
              Text('No contacts available'),
              SizedBox(height: 100),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => InformationPage(),
              ),
            );
          },
          child: Icon(Icons.add),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 1,
          backgroundColor: Colors.white,
          title: Text(
            'Contacts',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search, color: Colors.black),
              onPressed: () {
                // Perform search functionality
              },
            ),
            PopupMenuButton(
              icon: Icon(Icons.more_vert, color: Colors.black),
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    child: Text('Sort'),
                    value: 'sort',
                  ),
                  PopupMenuItem(
                    child: Text('Delete All'),
                    value: 'deleteAll',
                  ),
                ];
              },
              onSelected: (value) {
                if (value == 'sort') {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Sort'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              title: Text('Sort A-Z'),
                              onTap: () {
                                // Perform A-Z sorting
                                Navigator.pop(context); // Close the dialog
                              },
                            ),
                            ListTile(
                              title: Text('Sort Z-A'),
                              onTap: () {
                                // Perform Z-A sorting
                                Navigator.pop(context); // Close the dialog
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  );
                } else if (value == 'deleteAll') {
                  setState(() {
                    contacts.clear();
                  });
                }
              },
            ),
          ],
        ),
        body: Container(
          margin: EdgeInsets.only(top: 10),
          child: ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (context, index) {
              Contact contact = contacts[index];
              return Dismissible(
                background: Container(
                  color: Colors.red,
                  child: Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
                key: Key(contact.phoneNumber),
                onDismissed: (direction) {
                  setState(() {
                    contacts.removeAt(index);
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${contact.phoneNumber} is removed'),
                    ),
                  );
                },
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContactInfo(contact: contact),
                      ),
                    );
                  },
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    '${contact.name} ${contact.surname}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("+92 " + contact.phoneNumber),
                  trailing: Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                ),
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const InformationPage(),
              ),
            );
          },
          child: Icon(Icons.add),
        ),
      );
    }
  }
}
