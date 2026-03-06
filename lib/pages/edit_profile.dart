import 'package:flutter/material.dart';
import 'package:islamity/components/app_text_field.dart';
import 'package:islamity/components/toolbar.dart';

enum Gender {
  // create an enum for the genders to be used
  none,
  male,
  female,
  other,
  undisclosed,
}

class EditProfilePage extends StatefulWidget {
  EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      appBar: Toolbar(title: "Edit Profile"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 12 , right: 12,top:6),
                    width: 180, color: Colors.red[500], height: 180),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child: Icon(Icons.edit, size: 20, color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              AppTextField(hint: 'First Name'),
              SizedBox(height: 10),
              AppTextField(hint: 'Last Name'),
              SizedBox(height: 10),
              AppTextField(hint: 'Phone Number'),
              SizedBox(height: 10),
              AppTextField(hint: 'Location'),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Changes are made successfully',
                        style: TextStyle(fontSize: 15),
                      ),
                      duration: Duration(seconds: 2),
                    ),
                  );
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  foregroundColor: Colors.black,
                  minimumSize: Size(200, 50),
                ),
                child: Text("Apply Changes", style: TextStyle(fontSize: 16)),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  foregroundColor: Colors.black,
                  minimumSize: Size(100, 50),
                ),
                child: Text("Back", style: TextStyle(fontSize: 16)),
              ),
              RadioListTile(
                title: Text('Female', 
                style: TextStyle(fontWeight: FontWeight.bold),),
                value: Gender.female,
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = Gender.female;
                  });
                },
              ),
              RadioListTile(
                title: Text('Male',
                style: TextStyle(fontWeight: FontWeight.bold),),
                value: Gender.male,
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = Gender.male;
                  });
                },
              ),
              RadioListTile(
                title: Text('Other',
                style: TextStyle(fontWeight: FontWeight.bold),),
                value: Gender.other,
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = Gender.other;
                  });
                },
              ),
              RadioListTile(
                title: Text('Undisclosed',
                style: TextStyle(fontWeight: FontWeight.bold),),
                value: Gender.undisclosed,
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = Gender.undisclosed;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
