import 'package:codev_learn/components/navbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Navbar(),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 500,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 100),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Let's learn new technology with KodeV Academy",
                          style: GoogleFonts.poppins(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Perdalam dan asah kemampuan programming bersama mentor KodeV dan dapatkan benefit kelas yang berupa sertifikat dan penyaluran kerja.',
                          style: GoogleFonts.poppins(
                              fontSize: 16.0, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(30),
                          onTap: () {},
                          child: Container(
                            width: 250,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.lightBlue,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                'Get Started',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 100),
                  width: 400,
                  height: 400,
                  child: Image.asset('assets/img/study.png'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
