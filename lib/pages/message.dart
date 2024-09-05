// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  ContactPage({super.key});

  final List<User> usersprofile = [
    User(
        name: 'Laurent',
        message: 'How about meeting tomorrow?',
        imageUrl: 'https://static.remove.bg/sample-gallery/graphics/bird-thumbnail.jpg'),
    User(
        name: 'Tracy',
        message: 'I love that idea, it\'s great!',
        imageUrl: 'https://static.remove.bg/sample-gallery/graphics/bird-thumbnail.jpg'),
    User(
        name: 'Claire',
        message: 'I wasn\'t aware of that, Let me check',
        imageUrl: 'https://static.remove.bg/sample-gallery/graphics/bird-thumbnail.jpg'),
    User(
        name: 'Joe',
        message: 'Flutter just release 1.0 officially. Should I go for it?',
        imageUrl: 'https://static.remove.bg/sample-gallery/graphics/bird-thumbnail.jpg'),
    User(
        name: 'Mark',
        message: 'It totally makes sense to get some extra day-off',
        imageUrl: 'https://static.remove.bg/sample-gallery/graphics/bird-thumbnail.jpg'),
    User(
        name: 'Williams',
        message: 'It has been re-scheduled to next Saturday 7:30pm',
        imageUrl: 'https://static.remove.bg/sample-gallery/graphics/bird-thumbnail.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Messages',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount: usersprofile.length,
          itemBuilder: (context, index) {
            final profile = usersprofile[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('${profile.imageUrl}'),
              ),
              title: Text('${profile.name}'),
              subtitle: Text('${profile.message}'),
              trailing: Icon(Icons.arrow_right_sharp),
            );
          },
        ),
      ),
    );
  }
}

class User {
  final String? name;
  final String? message;
  final String? imageUrl;

  User({this.name, this.message, this.imageUrl});
}
