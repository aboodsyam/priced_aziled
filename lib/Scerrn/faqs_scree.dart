import 'package:flutter/material.dart';

class FaqsScreen extends StatelessWidget {
   FaqsScreen({super.key, this.massage ='No Massage'});

  String massage ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQs'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(massage  ),
      ),
    );
  }
}
