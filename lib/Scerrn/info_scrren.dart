import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoScreen extends StatelessWidget {
  InfoScreen({super.key});

  String _message = 'No Message';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('عن التطبيق'),
        centerTitle: true,
        // automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Center(
        child: Text(
          _message,
          style: GoogleFonts.nunito(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
