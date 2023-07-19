import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MakePayment extends StatefulWidget {
  @override
  _MakePaymentState createState() => _MakePaymentState();
}

class _MakePaymentState extends State<MakePayment> {
  final TextEditingController _payerController = TextEditingController();
  final TextEditingController _payeeController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();

  void createPayment() async {
    final payer = _payerController.text;
    final payee = _payeeController.text;
    final amount = double.parse(_amountController.text);

    // Replace this with your actual logic for checking existing payee
    final existingPayee = true;

    if (existingPayee) {
      final response = await http.post(
        Uri.parse('http://localhost:5000/payments'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'payer': payer,
          'payee': payee,
          'amount': amount,
        }),
      );

      if (response.statusCode == 200) {
        _payerController.clear();
        _payeeController.clear();
        _amountController.clear();
      }
      // ignore: dead_code
    } else {
      final response = await http.post(
        Uri.parse('http://localhost:5000/users'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'username': payee,
          'available_amount': 0,
        }),
      );

      if (response.statusCode == 200) {
        createPayment();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Make Payment'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Make Payment',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _payerController,
              decoration: InputDecoration(
                labelText: 'Payer',
              ),
            ),
            TextField(
              controller: _payeeController,
              decoration: InputDecoration(
                labelText: 'Payee',
              ),
            ),
            TextField(
              controller: _amountController,
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: createPayment,
              child: Text('Make Payment'),
            ),
          ],
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class MakePayment extends StatefulWidget {
//   // final Function() onPaymentMade;
//   // final List<dynamic> users;

//   // MakePayment(this.onPaymentMade, this.users, {super.key});

//   @override
//   _MakePaymentState createState() => _MakePaymentState();
// }

// class _MakePaymentState extends State<MakePayment> {
//   final TextEditingController _payerController = TextEditingController();
//   final TextEditingController _payeeController = TextEditingController();
//   final TextEditingController _amountController = TextEditingController();

//   void createPayment() async {
//     final payer = _payerController.text;
//     final payee = _payeeController.text;
//     final amount = double.parse(_amountController.text);

//     final existingPayee = widget.users.firstWhere(
//       (user) => user['username'] == payee,
//       orElse: () => null,
//     );

//     if (existingPayee != null) {
//       final response = await http.post(
//         Uri.parse('http://localhost:5000/payments'),
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode({
//           'payer': payer,
//           'payee': payee,
//           'amount': amount,
//         }),
//       );

//       if (response.statusCode == 200) {
//         // widget.onPaymentMade();
//         _payerController.clear();
//         _payeeController.clear();
//         _amountController.clear();
//       }
//     } else {
//       final response = await http.post(
//         Uri.parse('http://localhost:5000/users'),
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode({
//           'username': payee,
//           'available_amount': 0,
//         }),
//       );

//       if (response.statusCode == 200) {
//         // widget.onPaymentMade();
//         createPayment();
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         const Text(
//           'Make Payment',
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(height: 10),
//         TextField(
//           controller: _payerController,
//           decoration: const InputDecoration(
//             labelText: 'Payer',
//           ),
//         ),
//         TextField(
//           controller: _payeeController,
//           decoration: const InputDecoration(
//             labelText: 'Payee',
//           ),
//         ),
//         TextField(
//           controller: _amountController,
//           decoration: const InputDecoration(
//             labelText: 'Amount',
//           ),
//           keyboardType: TextInputType.number,
//         ),
//         const SizedBox(height: 10),
//         ElevatedButton(
//           onPressed: createPayment,
//           child: const Text('Make Payment'),
//         ),
//       ],
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class MakePayment extends StatefulWidget {
//   @override
//   _MakePaymentState createState() => _MakePaymentState();
// }

// class _MakePaymentState extends State<MakePayment> {
//   final TextEditingController _payerController = TextEditingController();
//   final TextEditingController _payeeController = TextEditingController();
//   final TextEditingController _amountController = TextEditingController();

//   void createPayment() async {
//     final payer = _payerController.text;
//     final payee = _payeeController.text;
//     final amount = double.parse(_amountController.text);

//     final existingPayee = widget.users.firstWhere(
//       (user) => user['username'] == payee,
//       orElse: () => null,
//     );

//     if (existingPayee != null) {
//       final response = await http.post(
//         Uri.parse('http://localhost:5000/payments'),
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode({
//           'payer': payer,
//           'payee': payee,
//           'amount': amount,
//         }),
//       );

//       if (response.statusCode == 200) {
//         _payerController.clear();
//         _payeeController.clear();
//         _amountController.clear();
//       }
//     } else {
//       final response = await http.post(
//         Uri.parse('http://localhost:5000/users'),
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode({
//           'username': payee,
//           'available_amount': 0,
//         }),
//       );

//       if (response.statusCode == 200) {
//         createPayment();
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         const Text(
//           'Make Payment',
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(height: 10),
//         TextField(
//           controller: _payerController,
//           decoration: const InputDecoration(
//             labelText: 'Payer',
//           ),
//         ),
//         TextField(
//           controller: _payeeController,
//           decoration: const InputDecoration(
//             labelText: 'Payee',
//           ),
//         ),
//         TextField(
//           controller: _amountController,
//           decoration: const InputDecoration(
//             labelText: 'Amount',
//           ),
//           keyboardType: TextInputType.number,
//         ),
//         const SizedBox(height: 10),
//         ElevatedButton(
//           onPressed: createPayment,
//           child: const Text('Make Payment'),
//         ),
//       ],
//     );
//   }
// }
