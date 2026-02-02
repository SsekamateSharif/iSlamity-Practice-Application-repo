import 'package:flutter/material.dart';
import 'package:islamity/components/toolbar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: "Profile",
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.account_circle),
            itemBuilder:
                (context) => [
                  const PopupMenuItem(
                    value: "profile",
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Profile"),
                    ),
                  ),
                  const PopupMenuItem(
                    value: "settings",
                    child: ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("Settings"),
                    ),
                  ),
                  const PopupMenuItem(
                    value: "edit",
                    child: ListTile(
                      leading: Icon(Icons.edit),
                      title: Text("Edit"),
                    ),
                  ),
                  const PopupMenuItem(
                    value: "Account Information",
                    child: ListTile(
                      leading: Icon(Icons.info),
                      title: Text("Account Information"),
                    ),
                  ),
                  const PopupMenuItem(
                    value: "logout",
                    child: ListTile(
                      leading: Icon(Icons.logout),
                      title: Text("Logout"),
                    ),
                  ),
                ],
            onSelected: (value) {
              switch (value) {
                case "profile":
                  break;
                case "settings":
                  break;
                case "logout":
                  break;
                case "edit":
                  Navigator.of(context).pushNamed("/edit_profile");
                  break;
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: "searching",
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: "Settings",
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.blue[800],
      body: Column(
        children: [
          SizedBox(height: 63),
          Text(
            "Harry Styles",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(height: 10),
          Text("Chicago, Illinois, USA", style: TextStyle(fontSize: 17)),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "472",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text("Followers", style: TextStyle(fontSize: 15)),
                ],
              ),
              Column(
                children: [
                  Text(
                    "120",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text("Posts", style: TextStyle(fontSize: 15)),
                ],
              ),
              Column(
                children: [
                  Text(
                    "340",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text("Following", style: TextStyle(fontSize: 15)),
                ],
              ),
            ],
          ),
          Divider(thickness: 1, height: 24),
        ],
      ),
    );
  }
}
