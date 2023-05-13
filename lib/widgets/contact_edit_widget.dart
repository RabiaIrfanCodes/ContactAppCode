import 'package:contactapp/utils/data.dart';
import 'package:flutter/material.dart';

Widget mylineText1() {
  return Row(
    children: [
      Container(
        margin: EdgeInsets.only(top: 30, left: 30, bottom: 5),
        child: Text(
          "Name",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
      )
    ],
  );
}


Widget Email1() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        margin: EdgeInsets.only(top: 2),
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[50],
        ),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.never,
                contentPadding: EdgeInsets.only(left: 15),
                labelText: "Enter Name",
                labelStyle: TextStyle(color: Colors.black, fontSize: 14),
                enabledBorder: InputBorder.none,
                focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}


Widget mylineText2() {
  return Row(
    children: [
      Container(
        margin: EdgeInsets.only(top: 20, left: 30, bottom: 5),
        child: Text(
          "Surname",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
      )
    ],
  );
}

Widget Email2() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        margin: EdgeInsets.only(top: 2),
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[50],
        ),
        child: Column(
          children: [
            TextField(
              controller: surnameController,
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.never,
                contentPadding: EdgeInsets.only(left: 15),
                labelText: "Enter Surname",
                labelStyle: TextStyle(color: Colors.black, fontSize: 14),
                // floatingLabelBehavior: FloatingLabelBehavior.never,
                //  focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget mylineText3() {
  return Row(
    children: [
      Container(
        margin: EdgeInsets.only(top: 20, left: 30, bottom: 5),
        child: Text(
          "Phone Number",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
      )
    ],
  );
}

Widget PhoneNumber() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        margin: EdgeInsets.only(top: 2),
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[50],
        ),
        child: Column(
          children: [
            TextField(
              controller: phoneNumberController,
              keyboardType: TextInputType.phone,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.never,
                contentPadding: EdgeInsets.only(left: 15),
                labelText: "+92  _ _ _  _ _ _  _ _ _ _",
                labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
                // floatingLabelBehavior: FloatingLabelBehavior.never,
                //  focusedBorder: InputBorder.none,
                prefixText: "+92",
                prefixStyle:
                    TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                enabledBorder: InputBorder.none,
                focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
