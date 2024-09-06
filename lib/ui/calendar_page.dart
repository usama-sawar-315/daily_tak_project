import 'package:daily_tak_project/utils/constant.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212832),
      appBar: AppBar(
        backgroundColor:  const Color(0xFF212832),
        title: Center(
          child: Text(
            'Schedule',
            style:
            TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Theme.of(context).dividerColor),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(kPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'September',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color:Theme.of(context).dividerColor),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: MediaQuery.sizeOf(context).height*0.15,
                child: DatePicker(
                  DateTime.now(),
                  initialSelectedDate: DateTime.now(),
                  selectionColor : Theme.of(context).primaryColor,
                  selectedTextColor:  Theme.of(context).primaryColorDark,
                  onDateChange: (date) {
                    // New date selected
                  },
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Today\'s Tasks',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color:Theme.of(context).dividerColor),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsetsDirectional.all(5),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'User Interviews',
                      style: TextStyle(fontSize: 20,color: Theme.of(context).primaryColorDark),
                    ),
                    Text(
                      '16:00 - 18:00',
                      style: TextStyle(fontSize: 15,color: Theme.of(context).primaryColorDark),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsetsDirectional.all(5),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorLight,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'WireFirms',
                      style: TextStyle(fontSize: 20,color: Theme.of(context).dividerColor),
                    ),
                    Text(
                      '16:00 - 18:00',
                      style: TextStyle(fontSize: 15,color: Theme.of(context).dividerColor),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsetsDirectional.all(5),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorLight,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Design System',
                      style: TextStyle(fontSize: 20,color: Theme.of(context).dividerColor),
                    ),
                    Text(
                      '16:00 - 18:00',
                      style: TextStyle(fontSize: 15,color: Theme.of(context).dividerColor),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsetsDirectional.all(5),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorLight,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Manage task',
                      style: TextStyle(fontSize: 20,color: Theme.of(context).dividerColor),
                    ),
                    Text(
                      '16:00 - 18:00',
                      style: TextStyle(fontSize: 15,color: Theme.of(context).dividerColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
