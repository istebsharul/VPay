from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy
from flask_cors import CORS

app = Flask(__name__)
CORS(app)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///payments.db'  # SQLite database file
db = SQLAlchemy(app)


class User(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(100))
    available_amount = db.Column(db.Float)

    def to_dict(self):
        return {
            'id': self.id,
            'username': self.username,
            'available_amount': self.available_amount
        }


class Payment(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    payer = db.Column(db.String(100))
    payee = db.Column(db.String(100))
    amount = db.Column(db.Float)

    def to_dict(self):
        return {
            'id': self.id,
            'payer': self.payer,
            'payee': self.payee,
            'amount': self.amount
        }


# Create the database tables
with app.app_context():
    db.create_all()


@app.route('/users', methods=['POST'])
def create_user():
    username = request.json.get('username')
    available_amount = request.json.get('available_amount')
    user = User(username=username, available_amount=available_amount)
    db.session.add(user)
    db.session.commit()
    return jsonify({'message': 'User created successfully'})


@app.route('/users', methods=['GET'])
def get_users():
    users = User.query.all()
    return jsonify({'users': [user.to_dict() for user in users]})


@app.route('/payments', methods=['POST'])
def create_payment():
    payer = request.json.get('payer')
    payee = request.json.get('payee')
    amount = request.json.get('amount')

    existing_payer = User.query.filter_by(username=payer).first()
    existing_payee = User.query.filter_by(username=payee).first()

    if existing_payer is not None and existing_payee is not None:
        if existing_payer.available_amount >= amount:
            # Update payer's balance
            existing_payer.available_amount -= amount
            db.session.commit()

            # Update payee's balance
            existing_payee.available_amount += amount
            db.session.commit()

            # Create payment record
            payment = Payment(payer=payer, payee=payee, amount=amount)
            db.session.add(payment)
            db.session.commit()

            # Fetch updated user details
            users = User.query.all()
            return jsonify({'message': 'Payment created successfully', 'users': [user.to_dict() for user in users]})
        else:
            return jsonify({'message': 'Insufficient balance for the payer'}), 400
    else:
        return jsonify({'message': 'Payer or payee does not exist'}), 400


@app.route('/payments', methods=['GET'])
def get_payments():
    payments = Payment.query.all()
    return jsonify({'payments': [payment.to_dict() for payment in payments]})


if __name__ == '__main__':
    app.run()
