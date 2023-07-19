# import 'package:http/http.dart' as http;

# void _registerUser() async {
#   String username = _usernameController.text;
#   String password = _passwordController.text;

#   // Create a JSON payload with the username and password
#   Map<String, dynamic> payload = {
#     'username': username,
#     'available_amount': 0.0 // Set an initial available amount if required
#   };

#   // Make a POST request to the Flask API
#   Uri uri = Uri.parse('http://YOUR_API_URL/users');
#   http.Response response = await http.post(uri, body: payload);

#   // Check the response status
#   if (response.statusCode == 200) {
#     // Registration successful
#     print('User registered successfully');
#     print(response.body);

#     // Navigate to the home page after registration
#     Navigator.push(
#       context,
#       MaterialPageRoute(
#         builder: (context) => const HomePage(),
#       ),
#     );
#   } else {
#     // Registration failed
#     print('User registration failed');
#     print(response.body);
#   }
# }


# from flask import Flask, jsonify, request
# from flask_sqlalchemy import SQLAlchemy

# app = Flask(__name__)
# app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///payment_app.db'
# db = SQLAlchemy(app)


# # class User(db.Model):
# #     id = db.Column(db.Integer, primary_key=True)
# #     username = db.Column(db.String(50), unique=True, nullable=False)
# #     balance = db.Column(db.Float, default=0.0)

# #     def __repr__(self):
# #         return f"<User {self.username}>"

# class User(db.Model):
#     id = db.Column(db.Integer, primary_key=True)
#     username = db.Column(db.String(50), unique=True, nullable=False)
#     password = db.Column(db.String(255), nullable=False)  # Add the password column
#     balance = db.Column(db.Float, default=0.0)

#     def __repr__(self):
#         return f"<User {self.username}>"


# with app.app_context():
#     db.create_all()


# @app.route('/balance', methods=['GET'])
# def get_balance():
#     username = request.args.get('username')
#     user = User.query.filter_by(username=username).first()
#     if user:
#         return jsonify({'balance': user.balance})
#     else:
#         return jsonify({'error': 'User not found'})


# @app.route('/transfer', methods=['POST'])
# def transfer_funds():
#     data = request.get_json()
#     sender = data.get('sender')
#     recipient = data.get('recipient')
#     amount = data.get('amount')

#     sender_user = User.query.filter_by(username=sender).first()
#     recipient_user = User.query.filter_by(username=recipient).first()

#     if sender_user and recipient_user:
#         if sender_user.balance >= amount:
#             sender_user.balance -= amount
#             recipient_user.balance += amount
#             db.session.commit()
#             return jsonify({'message': 'Transfer successful'})
#         else:
#             return jsonify({'error': 'Insufficient balance'})
#     else:
#         return jsonify({'error': 'Invalid sender or recipient'})


# @app.route('/register', methods=['POST'])
# def register_user():
#     data = request.get_json()
#     username = data.get('username')
#     password = data.get('password')

#     if User.query.filter_by(username=username).first():
#         return jsonify({'error': 'User already exists'})
#     else:
#         new_user = User(username=username, password=password, balance=10000)  # Set the balance to 10000
#         db.session.add(new_user)
#         db.session.commit()
#         return jsonify({'message': 'User registered successfully'})

# @app.route('/login', methods=['POST'])
# def login_user():
#     data = request.get_json()
#     username = data.get('username')
#     password = data.get('password')

#     user = User.query.filter_by(username=username).first()
#     if user:
#         if user.password == password:
#             return jsonify({'message': 'Login successful'})
#         else:
#             return jsonify({'error': 'Incorrect password'})
#     else:
#         return jsonify({'error': 'User not found'})




# if __name__ == '__main__':
#     app.run()
