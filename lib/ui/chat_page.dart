import 'package:daily_tak_project/ui/chat_inbox_page.dart';
import 'package:daily_tak_project/ui/groupib_page.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> with SingleTickerProviderStateMixin{

  late TabController controller;
  int activeTabIndex = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 2,
      initialIndex: 0,
      vsync: this,
    );
    controller.addListener(() {
      setState(() {
        activeTabIndex = controller.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212832),
      appBar: AppBar(
        backgroundColor: const Color(0xFF212832),
        title: Center(
          child: Text(
            'Messages',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).dividerColor),
          ),
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            const SizedBox(height: 20),
            Material(
              child: Container(
                height: 55,
                color: const Color(0xFF212832),
                child: TabBar(
                    controller: controller,
                    isScrollable: false,
                    labelColor: Theme.of(context).primaryColorDark,
                    unselectedLabelColor: Theme.of(context).dividerColor,
                    indicatorWeight: 0,
                    dividerColor: Colors.transparent,
                    indicator: BoxDecoration(
                        border: Border.all(width: 1.0, color: Colors.transparent)),
                    tabs: [
                      Tab(
                        child: Container(
                          color: activeTabIndex == 1
                              ? Theme.of(context).primaryColorLight
                              : Theme.of(context).primaryColor,
                          alignment: Alignment.center,
                          child: const Text('Chat', style: TextStyle(fontSize: 20)),
                        ),
                      ),
                      Tab(
                        child: Container(
                          color: activeTabIndex == 0
                              ? Theme.of(context).primaryColorLight
                              : Theme.of(context).primaryColor,
                          alignment: Alignment.center,
                          child:
                              const Text('Group', style: TextStyle(fontSize: 20)),
                        ),
                      ),
                    ]),
              ),
            ),
            Expanded(
              child: TabBarView(
                  controller: controller,
                  children: const [
                    ChatInboxPage(),
                     GroupIbPage(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
