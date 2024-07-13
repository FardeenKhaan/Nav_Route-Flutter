import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen02 extends StatefulWidget {
  int counter;
  Screen02(this.counter, {super.key});

  @override
  State<Screen02> createState() => _Screen02State();
}

class _Screen02State extends State<Screen02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Screen02'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
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
                '${widget.counter} times',
                style: GoogleFonts.aboreto(fontSize: 35.0),
              ),
              MaterialButton(
                  child: Icon(Icons.arrow_back),
                  color: Colors.grey.shade800,
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context);
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
                  widget.counter++;
                },
              );
            },
            child: Icon(Icons.add)));
  }
}
