import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isWeb = screenSize.width > 400;

    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            const SizedBox(height: 16),
            Text(
              'Marcelo Montanher',
              style: GoogleFonts.indieFlower(
                fontSize: 26,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            isWeb
                ? Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(1000)),
                            color: Colors.white,
                          ),
                          width: 300,
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.phone_android,
                                color: Colors.teal,
                              ),
                              SizedBox(width: 24),
                              Text(
                                '11 12345-6789',
                                style: TextStyle(
                                  color: Colors.teal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        width: 300,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Material(
                            borderRadius: BorderRadius.all(Radius.circular(1000)),
                            color: Colors.white,
                            elevation: 8,

                            child: ListTile(
                              leading: Icon(
                                Icons.phone_android,
                                color: Colors.teal,
                              ),
                              title: Text(
                                '11 12345-6789',
                                style: TextStyle(
                                  color: Colors.teal,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                : Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(1000)),
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.phone_android,
                                color: Colors.teal,
                              ),
                              SizedBox(width: 24),
                              Text(
                                '11 12345-6789',
                                style: TextStyle(
                                  color: Colors.teal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Material(
                          borderRadius: BorderRadius.all(Radius.circular(1000)),
                          color: Colors.white,
                          elevation: 8,
                          child: ListTile(
                            leading: Icon(
                              Icons.phone_android,
                              color: Colors.teal,
                            ),
                            title: Text(
                              '11 12345-6789',
                              style: TextStyle(
                                color: Colors.teal,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
