import 'package:flutter/material.dart';
import 'package:islamity/components/post_items.dart';

class Toolbar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final List<Widget> actions;
  const Toolbar({super.key, required this.title, this.actions = const []});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);


  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue[700],
      title: Text("iSlamity"),
      centerTitle: false,
      actions: actions,
    );
  }
  

}
