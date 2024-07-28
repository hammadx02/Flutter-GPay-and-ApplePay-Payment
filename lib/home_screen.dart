import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_gpay_and_applepay_integration/payment_config.dart';
import 'package:pay/pay.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String os = Platform.operatingSystem;

  var applePayButton = ApplePayButton(
    paymentConfiguration: PaymentConfiguration.fromJsonString(defaultApplePay),
    paymentItems: const [
      PaymentItem(
        amount: '250',
        label: 'Iphone 13 Pro Max',
        status: PaymentItemStatus.final_price,
      ),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
