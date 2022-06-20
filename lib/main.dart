import 'package:codev_learn/pages/dashboard/dashboard.dart';
import 'package:codev_learn/pages/dashboard/flutter/flutter_home.dart';
import 'package:codev_learn/pages/landing_page.dart';
import 'package:codev_learn/pages/login_page.dart';
import 'package:codev_learn/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await Supabase.initialize(
      url: 'https://pwntyostjwdimtahcpah.supabase.co',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InB3bnR5b3N0andkaW10YWhjcGFoIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY1NDQwODU2OCwiZXhwIjoxOTY5OTg0NTY4fQ.U1xcwFu7kInfgcSlxHdlg-r2cKwg7vjzFEoIfsL0_Ik');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const LandingPage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/dashboard': (context) => const DashboardPage(),
        '/flutter-list': (context) => const FlutterHome(),
      },
    );
  }
}
