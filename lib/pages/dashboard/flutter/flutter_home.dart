import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class FlutterHome extends StatefulWidget {
  const FlutterHome({Key? key}) : super(key: key);

  @override
  State<FlutterHome> createState() => _FlutterHomeState();
}

class _FlutterHomeState extends State<FlutterHome> {
  final supabase = SupabaseClient('https://pwntyostjwdimtahcpah.supabase.co',
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InB3bnR5b3N0andkaW10YWhjcGFoIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY1NDQwODU2OCwiZXhwIjoxOTY5OTg0NTY4fQ.U1xcwFu7kInfgcSlxHdlg-r2cKwg7vjzFEoIfsL0_Ik');

  Future<dynamic> getData() async {
    final res = await supabase.from('materi').select().execute();
    print(res);
    dynamic data = res.data;
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          width: MediaQuery.of(context).size.width,
          height: 80,
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
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
        preferredSize: const Size.fromHeight(80),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }
          final iniData = snapshot.data! as List;
          return ListView.builder(
            itemCount: iniData.length,
            itemBuilder: (BuildContext context, index) {
              return Text(
                iniData[index]['title'],
              );
            },
          );
        },
      ),
    );
  }
}
