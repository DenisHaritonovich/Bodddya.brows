import 'package:flutter/material.dart';

class TimePage extends StatefulWidget {
  @override
  _TimePageState createState() => _TimePageState();
}

class _TimePageState extends State<TimePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bodddya.brows'),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/brows.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15.0),
                      ),
                      TextButton(
                        child: Text(
                          '12:00',
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.deepOrange,
                          ),
                        ),
                        onPressed: () {},
                      ),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                      ),
                      TextButton(
                        child: Text(
                          '13:30',
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.deepOrange,
                          ),
                        ),
                        onPressed: () {},
                      ),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                      ),
                      TextButton(
                        child: Text(
                          '15:00',
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.deepOrange,
                          ),
                        ),
                        onPressed: () {},
                      ),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                      ),
                      TextButton(
                        child: Text(
                          '16:30',
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.deepOrange,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
