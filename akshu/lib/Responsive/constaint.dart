import 'package:flutter/material.dart';

var myDefColor = Colors.grey.shade300;

var myAppbar = AppBar(
  backgroundColor: Colors.grey.shade900,
);

var myDrawer = Drawer(
  backgroundColor: Colors.grey.shade300,
  child: const Column(
    children: [
      DrawerHeader(
        child: Icon(
          Icons.favorite,
          size: 40,
        ),
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text('D A S H B O A R D'),
      ),
      ListTile(
        leading: Icon(Icons.message),
        title: Text('M E S S A G E'),
      ),
      ListTile(
        leading: Icon(Icons.person),
        title: Text('S E T T I N G'),
      ),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text('L O G O U T'),
      ),
    ],
  ),
);
