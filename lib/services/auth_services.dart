import 'dart:math';

import 'package:codev_learn/pages/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:lottie/lottie.dart';

class AuthServices extends GetxController {
  final supabase = SupabaseClient('https://pwntyostjwdimtahcpah.supabase.co',
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InB3bnR5b3N0andkaW10YWhjcGFoIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY1NDQwODU2OCwiZXhwIjoxOTY5OTg0NTY4fQ.U1xcwFu7kInfgcSlxHdlg-r2cKwg7vjzFEoIfsL0_Ik');

  final emailC = TextEditingController();
  final passC = TextEditingController();

  final regemailC = TextEditingController();
  final regpassC = TextEditingController();

  Future signIn() async {
    try {
      final res = await supabase.auth.signIn(
        email: emailC.text,
        password: passC.text,
      );

      final user = res.data?.user;
      final error = res.error;

      Get.defaultDialog(
          title: 'Success',
          content: Container(
            width: 200,
            height: 200,
            child: Lottie.asset('assets/lottie/done.json'),
          ),
          onConfirm: () => Get.offAllNamed('/dashboard'));
    } catch (e) {
      Get.snackbar('Erorr', 'Terjadi kesalahan, tidak bisa masuk!');
    }
  }

  Future signUp() async {
    try {
      final res = await supabase.auth.signUp(regemailC.text, regpassC.text);

      final user = res.data?.user;
      final error = res.error;

      Get.defaultDialog(
          confirmTextColor: Colors.white,
          title: 'Success',
          content: Container(
            width: 200,
            height: 200,
            child: Lottie.asset('assets/lottie/done.json'),
          ),
          onConfirm: () => Get.offAllNamed('/dashboard'));
    } catch (e) {
      Get.snackbar(
        'Erorr',
        'Terjadi kesalahan, tidak bisa melakukan register!',
      );
    }
  }
}
