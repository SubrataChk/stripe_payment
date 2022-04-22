import 'package:flutter/material.dart';
import 'package:stripe_payment/controller/payment_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var payment = PaymentController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => payment.makePayment(amount: "5", currency: "USD"),
          child: Text("Make Payment"),
        ),
      ),
    );
  }
}
