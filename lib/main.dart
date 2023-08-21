import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatelessWidget {
  const NinjaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text("Ninja ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body:Padding(
        padding:const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/userIcon.png"),
                radius: 40.0,
              ),
            ),
             Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              "NAME",
              style: TextStyle(
                color: Colors.grey[100],
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              "Tanyu Brandon",
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0,),
            Text(
              "CURRENT NINJA LEVEL",
              style: TextStyle(
                color: Colors.grey[100],
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0,),
            Text(
              "8",
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0,),
            Row(
               children: [
                 Icon(
                   Icons.email,
                   color: Colors.grey[100],
                 ),
                 const SizedBox(width: 5.0,),
                 Text(
                   "brandon@gmail.co.uk",
                   style: TextStyle(
                     color: Colors.grey[400],
                     fontSize: 18.0,
                     letterSpacing: 1.0,
                   ),
                 ),
               ],
            ),

          ],
        ),
      ),
    );
  }
}


