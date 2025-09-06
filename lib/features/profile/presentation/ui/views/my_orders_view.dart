import 'package:e_commerce/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MyOrdersView extends StatelessWidget {
  const MyOrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomAppBar(text: 'My Orders'));
  }
}
