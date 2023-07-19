import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CreateUser extends StatefulWidget {
  @override
  _CreateUserState createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _availableAmountController =
      TextEditingController();

  void createUser() async {
    final username = _usernameController.text;
    final availableAmount = double.parse(_availableAmountController.text);

    final response = await http.post(
      Uri.parse('http://localhost:5000/users'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'username': username,
        'available_amount': availableAmount,
      }),
    );

    if (response.statusCode == 200) {
      print(response.body);
      _usernameController.clear();
      _availableAmountController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Create USer View")),
        body: Column(
          children: [
            const Text(
              'Create New User',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            TextField(
              controller: _availableAmountController,
              decoration: const InputDecoration(
                labelText: 'Available Amount',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: createUser,
              child: const Text('Create User'),
            ),
          ],
        ));
  }
}
