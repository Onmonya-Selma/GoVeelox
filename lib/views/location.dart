import 'package:flutter/material.dart';

class RoutePage extends StatelessWidget {
  RoutePage({super.key});

  final List<Map<String, String>> recentroutes = [
    {
      'title': 'Federal Secretariat',
      'subtitle': 'Central Business District, Abuja'
    },
    {
      'title': 'Wonderland Park',
      'subtitle': 'Ademola Adetokunbo street, Wuse 2,Abuja'
    },
    {'title': 'Sunnyvale Estate', 'subtitle': 'Lokogoma, Abuja'}
  ];

  final List<Map<String, String>> popularRoutes = [
    {
      'title': 'Nnamdi Azikiwe Airport',
      'subtitle': 'Sabon Lugbe, Sauka, Abuja'
    },
    {
      'title': 'Shoprite Mall',
      'subtitle': 'Ademola Adetokunbo street, Wuse 2,Abuja'
    },
    {
      'title': 'Moshood Abuja',
      'subtitle': 'City Gate, Abuja',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 64,
            ),
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Color(0XFF667185)),
                children: [
                  TextSpan(text: 'Hi,'),
                  TextSpan(
                      text: 'Uche', style: TextStyle( color:Color(0xFF101928) )
              ),
                ],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Sending your package somewhere?',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              width: 343,
              decoration: BoxDecoration(
                color: Color(0xFF1D1D1D),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: Text(
                  'AD PROMOTION BANNER',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xFFFDFDFD),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 56,
              width: 343,
              //margin: EdgeInsets.all(16),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20))),

              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Where should your package be sent to?',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text('Recent routes'),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: recentroutes.length,
                  itemBuilder: (context, index) {
                    final item = recentroutes[index];
                    return ListTile(
                      leading: Container(
                          height: 36,
                          width: 36,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFEA7EC),
                                width: 1,
                              ),
                              color: Color(0xFFFDFDFD),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                              child: Icon(
                            Icons.location_on_outlined,
                            color: Colors.purple[200],
                          ))),
                      title: Text(
                        item['title']!,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xFF1C1C1C),
                        ),
                      ),
                      subtitle: Text(
                        item['subtitle']!,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    );
                  }),
            ),

            Text(
              'Popular routes',
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: popularRoutes.length,
                  itemBuilder: (context, index) {
                    final item = popularRoutes[index];

                    return ListTile(
                      leading: Container(
                          height: 36,
                          width: 36,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFEA7EC),
                                width: 1,
                              ),
                              color: Color(0xFFFDFDFD),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                              child: Icon(
                            Icons.location_on_outlined,
                            color: Colors.purple[200],
                          ))),
                      title: Text(
                        item['title']!,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xFF1C1C1C),
                        ),
                      ),
                      subtitle: Text(
                        item['subtitle']!,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
