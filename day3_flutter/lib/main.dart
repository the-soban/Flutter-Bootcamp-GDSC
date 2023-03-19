import 'package:day3_flutter/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Welcome(),
    );
  }
}

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home(),
                      ),
                    );
                },
                child: Image.asset('../assets/logo.png')),
              Text("Welcome the Flutter Bootcamp 2023",
                  style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
              Text("Organized by GDSC NUML",
                  style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),),
                  SizedBox(
                    width: 16,
                  ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home(),
                      ),
                    );
                  },
                  child: Text("Go to Login"))
            ],
          ),
        ),
      ),
    );
  }
}
