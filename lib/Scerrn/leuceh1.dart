import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class leuched1 extends StatefulWidget {
  const leuched1({super.key});

  @override
  State<leuched1> createState() => _leuched1State();
}

class _leuched1State extends State<leuched1> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 1),(){
      Navigator.popAndPushNamed(context, '/lancher2');
    });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        alignment: Alignment.center,
       decoration: BoxDecoration(
         gradient: LinearGradient(
             colors: [
               Color(0xff7EAA92),
               Color(0xff9ED2BE),
         ],
         )
       ),
        child: Text('اهلا وسهلا بك..',
        style: GoogleFonts.aclonica(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
      ),
    );
  }
}
