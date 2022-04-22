import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import 'package:stripe_payment/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey =
      "pk_test_51KrGFEH4NEr5INQzHkjLe3NBYVX9ioloONgEZ6jp7RuaPmx3EsiuSICtIFtTppDU1xcxhdySNrRW2pDJLkvS7YZu001vYfXYIC";
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Stripe Payment",
      home: HomePage(),
    );
  }
}
