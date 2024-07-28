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
      PaymentItem(
        amount: '350',
        label: 'MacBook Pro',
        status: PaymentItemStatus.final_price,
      ),
      PaymentItem(
        amount: '600',
        label: 'Total',
        status: PaymentItemStatus.final_price,
      ),
    ],
    style: ApplePayButtonStyle.black,
    width: double.infinity,
    height: 50,
    type: ApplePayButtonType.buy,
    margin: const EdgeInsets.only(top: 15),
    onPaymentResult: (result) => debugPrint('Payment Result $result'),
    loadingIndicator: const Center(
      child: CircularProgressIndicator(),
    ),
  );

  var googlePayButton = GooglePayButton(
    paymentConfiguration: PaymentConfiguration.fromJsonString(defaultGooglePay),
    paymentItems: const [
      PaymentItem(
        amount: '250',
        label: 'Iphone 13 Pro Max',
        status: PaymentItemStatus.final_price,
      ),
      PaymentItem(
        amount: '350',
        label: 'MacBook Pro',
        status: PaymentItemStatus.final_price,
      ),
      PaymentItem(
        amount: '600',
        label: 'Total',
        status: PaymentItemStatus.final_price,
      ),
    ],
    type: GooglePayButtonType.buy,
    margin: const EdgeInsets.only(top: 15),
    onPaymentResult: (result) => debugPrint('Payment result $result'),
    loadingIndicator: const Center(
      child: CircularProgressIndicator(),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
