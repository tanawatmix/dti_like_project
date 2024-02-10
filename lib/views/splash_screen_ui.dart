// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dti_like_project/views/home_ui.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  
  @override
  void initState() {

    Future.delayed(
      Duration(seconds: 3),
      ()=> Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeUI(),
        ),
      ),
    );
    // TODO: implement initState
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Container(
        decoration: BoxDecoration( 
          image: DecorationImage( 
            image: AssetImage(
              'assets/images/bg_welcome.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column( 
            children: [ 
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Text( 
                'DTI Cake Shop',
                style: GoogleFonts.kanit( 
                  fontSize: MediaQuery.of(context).size.height * 0.045,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              CircularProgressIndicator( 
                color: Colors.pinkAccent,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.035,
              ),
              Text( 
                'ร้านเค้กในตำนาน',
                style: GoogleFonts.kanit( 
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 255, 89, 144),
                ),
              ),
              Text( 
                'Created by Tanawat DTI-SAU',
                style: GoogleFonts.kanit( 
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 244, 99, 147),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}