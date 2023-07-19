import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AllUser extends StatefulWidget {
  const AllUser({super.key});

  @override
  State<AllUser> createState() => _AllUserState();
}

class _AllUserState extends State<AllUser> {
  List<dynamic> _users = [];

  void getUsers() async {
    final response = await http.get(Uri.parse('http://localhost:5000/users'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        _users = data['users'];
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Users Page"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12),
          Expanded(
            child: ListView.builder(
              itemCount: _users.length,
              itemBuilder: (context, index) {
                final user = _users[index];
                return Card(
                  elevation: 1,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  color: Color.fromARGB(255, 255, 227, 124),
                  child: ListTile(
                    title: Text(
                      'Username: ${user['username']}',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Available Amount: ${user['available_amount']}',
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
