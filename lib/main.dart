import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: NinjaCard(),
));

/*Stateless widgets whose properties do not change over time.
this means that is does not contain data or states that change.
 */
class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 0;

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
        },
        backgroundColor: Colors.grey[800],
        child: const Icon(
          Icons.add,
        ),

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
              "$ninjaLevel",
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
            const SizedBox(height: 15.0,),
            ElevatedButton(
              style:  ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey[800]),
              ),
              onPressed: () {
                setState(() {
                  ninjaLevel -= 1;
                });
              },
              child:const Text(
                  "Sub Ninja Level ",
                   style: TextStyle(
                     letterSpacing: 1.0,
                 ),
              ),),

          ],
        ),
      ),
    );
  }
}




