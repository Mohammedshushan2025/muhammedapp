import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'صلِّ على النبي',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Arabic',
      ),
      home: SalawatPage(),
    );
  }
}

class SalawatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1B4332),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF1B4332),
              Color(0xFF2D5A41),
              Color(0xFF40916C),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // أيقونة المسجد
              Container(
                margin: EdgeInsets.only(bottom: 40),
                child: Icon(
                  Icons.mosque,
                  size: 80,
                  color: Colors.white.withOpacity(0.9),
                ),
              ),

              // النص الرئيسي
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.95),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 15,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      'صلِّ على النبي',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1B4332),
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15),
                    Text(
                      'صلى الله عليه وسلم',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF2D5A41),
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),

              // زخرفة إضافية
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 40,
                      height: 2,
                      color: Colors.white.withOpacity(0.6),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: Icon(
                        Icons.star,
                        color: Colors.white.withOpacity(0.8),
                        size: 20,
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 2,
                      color: Colors.white.withOpacity(0.6),
                    ),
                  ],
                ),
              ),

              // نص فرعي
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Text(
                  'اللهم صل وسلم وبارك على نبينا محمد',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white.withOpacity(0.9),
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}