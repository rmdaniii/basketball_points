import 'package:flutter/material.dart';

void main() {
  runApp( pointsCounter());
}

class pointsCounter extends StatefulWidget {

  @override
  State<pointsCounter> createState() => _pointsCounterState();
}

class _pointsCounterState extends State<pointsCounter> {
  // variables to change a result in counter
  int teamA = 0;
  int teamB = 0;

  void addOnePoint(){}

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('BasketBall Counter'),
          backgroundColor: Colors.orange,
        ),
        body:  Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                     const Text('Team A',
                     style: TextStyle(
                       fontSize: 32,
                     ),
                     ),
                     Text('$teamA',
                      style: const TextStyle(
                        fontSize: 140,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: const Size(130, 55) ,
                      ),
                      onPressed: (){
                        setState(() {
                          teamA++;
                        });
                      },
                        child: const Text('Add 1 point',
                        style: TextStyle(
                         fontSize: 16,
                          color: Colors.black
                        ),
                        ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: const Size(130, 55) ,
                      ),
                      onPressed: (){
                        setState(() {
                          teamA = teamA + 2;
                        });
                      },
                      child: const Text('Add 2 point',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: const Size(130, 55) ,
                      ),
                      onPressed: (){
                        setState(() {
                          teamA = teamA + 3;
                        });
                      },
                      child: const Text('Add 3 point',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 70,
                    endIndent: 25,
                  ),
                ),
                Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 40,
                    ),
                    const Text('Team B',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                     Text('$teamB',
                      style: const TextStyle(
                        fontSize: 140,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: const Size(130, 55) ,
                      ),
                      onPressed: (){
                        setState(() {
                          teamB++;
                        });
                      },
                      child: const Text('Add 1 point',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(130, 55) ,
                      ),
                      onPressed: (){
                        setState(() {
                          teamB+=2;
                        });
                      },
                      child: const Text('Add 2 point',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(130, 55) ,
                      ),
                      onPressed: (){
                        setState(() {
                          teamB+=3;
                        });
                      },
                      child: const Text('Add 3 point',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                minimumSize: const Size(200, 55) ,
              ),
              onPressed: (){
                setState(() {
                  teamB = 0;
                  teamA = 0;
                });
              },
              child: const Text('Reset',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
