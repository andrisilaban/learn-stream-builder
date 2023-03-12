import 'package:intl/intl.dart';

abstract class PaymentValidator {
  const PaymentValidator();

  void validatePayment(int amount);
  void checkBalance();
}

class MasterCard implements PaymentValidator {
// Define date, card number and the constructor
  const MasterCard();

  @override
  void validatePayment(int amount) {}

  @override
  void checkBalance() {}
}

class PayPal implements PaymentValidator {
// Define an email and the constructor

  const PayPal();

  @override
  void validatePayment(int amount) {}

  @override
  void checkBalance() {}
}

class MandiriPay extends PaymentValidator {
  @override
  void checkBalance() {}

  @override
  void validatePayment(int amount) {}
}

class PaymentProcessor {
  final PaymentValidator _validator;

  const PaymentProcessor(this._validator);

  void pay(int amount) => _validator.validatePayment(amount);
}


// And then we can freely use PayPal or MasterCard
void main() {

  void main() {
    String dateFormat(dynamic date,
        {String pattern = "yyyy-MM-dd",
          bool isFromDate = true,
          bool isDateIndo = false,
          String local = "en"}) {
      try {
        var formatter = DateFormat(pattern);
        String formatted = formatter.format(date);
        return formatted;
      } catch (e) {
        print("dateFormat");
        print(e);
      }
      return "";
    }

    DateTime date = DateFormat('dd/MM/yyyy').parse('01/03/2023');

    print(dateFormat(date, pattern: 'dd/MM/yyyy')); // Output: 01/03/2023

    print(dateFormat(date, pattern: 'yyyy-MM-dd')); // Output: 2023-03-01

    print(dateFormat(date, pattern: 'MMM d, y')); // Output: Mar 1, 2023
  }

  const p1 = PaymentProcessor(MasterCard());
  const p2 = PaymentProcessor(PayPal());
}
