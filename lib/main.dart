import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:priced_aziled/Scerrn/faqs_scree.dart';
import 'package:priced_aziled/Scerrn/info_scrren.dart';
import 'package:priced_aziled/Scerrn/leuceh1.dart';
import 'package:priced_aziled/Scerrn/leuceh2.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const[
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      // TODO: التحويل الى العربية
      supportedLocales: const[
        Locale('ar'),
      ],
      locale: const Locale('ar'),



      // TODO: عملت هيك بدل الهم لاني لدي اكثر من شاشة فلا يجوز هم لانها تنقل الى  شاشة واحدة.

      initialRoute: '/lancher1',

      routes: {
        '/lancher1' : (context) => const leuched1(),
        '/lancher2' : (context) => const leuceh2(),
        '/Infe' : (context) =>  InfoScreen(),
        '/faqs' : (context) =>  FaqsScreen(massage: 'My Massage',),


      },

    );
  }
}

