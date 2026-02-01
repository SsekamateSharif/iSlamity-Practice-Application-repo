import 'package:flutter/material.dart';

class PostItems extends StatelessWidget {
  final String user;
  const PostItems({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(children: [ElevatedButton(onPressed: () {}, child: Text(user))]),
          SizedBox(height: 12),
          Text(
            "Hello My name is Enid, I am 23 years old and am from a country in East Africa called Uganda. I live in the capital city of Uganda called Kampala. I study from Makerere University and I major in Civil Engineering.",
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
        ],
      ),
    );
  }
}
