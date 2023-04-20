
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            backgroundColor: Colors.black,
            title: const Text('Hello User'),
            automaticallyImplyLeading: false,
          ),
          ListTile(
            title: const Text("Products"),
          ),
          const Divider(),
          ListTile(
            title: const Text("Filter By"),
          ),

        ],
      ),
    );
  }
}
