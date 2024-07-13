import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nav_rout/screen02.dart';

class Screen01 extends StatefulWidget {
  const Screen01({super.key});

  @override
  State<Screen01> createState() => _Screen01State();
}

class _Screen01State extends State<Screen01> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Screen01'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          backgroundColor: Colors.grey,
          foregroundColor: Colors.orange,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'The Count pressed as:',
                style: GoogleFonts.aboreto(fontSize: 30.0),
              ),
              Text(
                '$count times',
                style: GoogleFonts.aboreto(fontSize: 35.0),
              ),
              MaterialButton(
                  child: Icon(Icons.arrow_forward),
                  color: Colors.grey.shade800,
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Screen02(count)));
                    });
                  })
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.elliptical(10, 10))),
            onPressed: () {
              setState(
                () {
                  count++;
                },
              );
            },
            child: Icon(Icons.add)));
  }
}
