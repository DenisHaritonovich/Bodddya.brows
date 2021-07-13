import 'time_page.dart';
import 'package:bodddya_brows/pages/time_page.dart';
import 'package:flutter/material.dart';
import 'package:calendar_timeline/calendar_timeline.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime dateTime = DateTime.now();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bodddya.brows'),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/brows.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  CalendarTimeline(
                    initialDate:
                        DateTime(dateTime.year, dateTime.month, dateTime.day + 1),
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2021, 11, 20),
                    onDateSelected: (date) async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TimePage(),
                        ),
                      );
                    },
                    leftMargin: 20,
                    monthColor: Colors.black,
                    dayColor: Colors.black,
                    activeDayColor: Colors.white,
                    activeBackgroundDayColor: Colors.brown,
                    selectableDayPredicate: (date) => date.day != 15,
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
