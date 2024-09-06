import 'package:daily_tak_project/ui/calendar_page.dart';
import 'package:daily_tak_project/ui/add_page.dart';
import 'package:daily_tak_project/ui/chat_page.dart';
import 'package:daily_tak_project/ui/home_page.dart';
import 'package:daily_tak_project/ui/notification_oage.dart';
import 'package:flutter/material.dart';

class BottomBarPage extends StatefulWidget {
  const BottomBarPage({super.key});

  @override
  State<BottomBarPage> createState() => _BottomBarPageState();
}
class _BottomBarPageState extends State<BottomBarPage> {
  late int _currentIndex = 0;
  var pages = const [HomePage(), ChatPage(),AddPage(), CalendarPage(), NotificationPage(),  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212832),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:  const Color(0xFF263238),
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor:  const Color(0xFF35454D),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items:  [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor
                ),
                child: Icon(Icons.add,color:Theme.of(context).primaryColorDark)),
            label: "",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Calendar',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Notification',
          ),
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
