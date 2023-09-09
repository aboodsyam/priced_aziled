import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:priced_aziled/Scerrn/faqs_scree.dart';

class leuceh2 extends StatefulWidget {
  const leuceh2({super.key});

  //Hime

  @override
  State<leuceh2> createState() => _leuceh2State();
}

int _count = 0;
String _message = 'استغفر الله';

class _leuceh2State extends State<leuceh2> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: عبارة عن الشي المستخدم لجلب حدث الانتفال الدي وصلنلي للشاشة
    ModalRoute? modalRoute = ModalRoute.of(context);

    if (modalRoute != null &&
        modalRoute.settings != null &&
        modalRoute.settings.arguments != null) {
      Map<String, dynamic> map =
          modalRoute.settings.arguments as Map<String, dynamic>;
      if (map.containsKey('message')) {
        _message = map['message'];
        if (map.containsKey('message')) ;
        _message = map['message'];
      }
    }
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'مسبحة الاذكار',
          style: GoogleFonts.arefRuqaa(),
        ),
        actions: [
          PopupMenuButton<String>(
            onSelected: (String value) {
              if (_message != value) {
                setState(() {
                  _message = value;
                });
              }
            },
            offset: Offset(2, 2),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: 'استـغفر الله',
                  height: 20,
                  child: Text('استـغفر الله', style: GoogleFonts.arefRuqaa()),
                ),
                PopupMenuDivider(),
                PopupMenuItem(
                  value: 'الحمد لله ',
                  height: 20,
                  child: Text('الحمد لله ', style: GoogleFonts.arefRuqaa()),
                ),
                PopupMenuDivider(),
                PopupMenuItem(
                  value: 'سبحان الله',
                  height: 20,
                  child: Text('سبحان الله', style: GoogleFonts.arefRuqaa()),
                ),
              ];
            },
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/Infe',
                arguments: <String, dynamic>{
                  'message': 'info screen',
                },
              );
            },
            icon: Icon(Icons.info),
          ),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  // TODO:   اعطتني القدرة ان اعمل تمرير للبيانات في الكنستركتر مباشرة
                  MaterialPageRoute(
                    builder: (context) => FaqsScreen(
                      massage: 'asfwesatgrsgh',
                    ),
                  ),
                );
                //     Navigator.pushNamed(context, '/faqs');
              },
              icon: Icon(Icons.question_answer))
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff749BC2),
            Color(0xff91C8E4),
          ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff749BC2),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://cdn.salla.sa/FxOhe1JdWDEVmBR4KJfPnZG9885dKBEu8WucqtT8.jpeg'),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black38,
                      offset: Offset(2, 6),
                      blurRadius: 6),
                ],
              ),
            ),

            // TODO: هاي لاجل ان اعمل الى تحت الصورة
            Container(
              height: 60,
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 6,
                      offset: Offset(2, 2),
                    ),
                  ]),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 60,
                      color: Colors.green,
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            _message,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.arefRuqaa(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              height: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 50,
                    color: Colors.white,
                    alignment: Alignment.center,
                    child: Text(
                      _count.toString(),
                      style: GoogleFonts.arefRuqaa(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        height: 2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        // TODO:تعمل عملية تحديث وتستخدم لكي تعمل تحديث علي حالة الواجهة الظاهرة الان
                        setState(() {
                          //     _count += 1;
                          ++_count;
                        });
                      },
                      //لتغير اللون
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xffACFADF),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.only(
                              bottomStart: Radius.circular(10),
                            ),
                          )),
                      child: Text(
                        'تسبيح',
                        style: GoogleFonts.arefRuqaa(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        //////////////./././././././////////////////
                        setState(() {
                          _count = 0;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffF3BCC8),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.only(
                            bottomEnd: Radius.circular(10),
                          ),
                        ),
                      ),
                      child: Text(
                        'اعادة',
                        style: GoogleFonts.arefRuqaa(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            setState(() {
              _count += 1;
            });
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
