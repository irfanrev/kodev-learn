import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 100),
            width: MediaQuery.of(context).size.width,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                const BoxShadow(
                  color: Colors.grey,
                  blurRadius: 7,
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/img/kodev.png',
                  height: 57,
                ),
              ],
            ),
          ),
          Container(
            width: Get.width,
            height: 500,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Center(
                      child: Image.asset('assets/img/login.png'),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 100, top: 30, bottom: 30),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.grey,
                    //     blurRadius: 6,
                    //     spreadRadius: 1.0,
                    //   )
                    // ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Login',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Silahkan login menggunakan email',
                        style: GoogleFonts.poppins(),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[200],
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.email),
                            const SizedBox(
                              width: 10,
                            ),
                            const Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Email',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[200],
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.lock),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.lightBlue,
                          ),
                          child: Center(
                            child: Text(
                              'Login',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            'Belum mempunyai akun?',
                            style: GoogleFonts.poppins(),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Register',
                              style: GoogleFonts.poppins(),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
