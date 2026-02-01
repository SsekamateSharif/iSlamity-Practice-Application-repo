import 'package:flutter/material.dart';
import 'package:islamity/components/post_items.dart';
import 'package:islamity/components/toolbar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<String> users = [];
  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
      appBar: Toolbar(
        title: "iSlamity",
        actions: [Icon(Icons.location_on_outlined),
        IconButton(
          icon: const Icon(Icons.search),
          tooltip: "searching",
          onPressed: (){}, ),
        IconButton(
          icon: const Icon(Icons.camera),
          tooltip: "Camera",
          onPressed: (){},
          ),
          ],
        ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItems(user: users[index]);
        },
        itemCount: users.length,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 24,
          );
        },
      ),
      backgroundColor: Colors.blue[900],
    );
  }

  mockUsersFromServer() {
    for (var i = 1; i < 11; i++) {
      users.add("User number $i");
    }
  }
}
