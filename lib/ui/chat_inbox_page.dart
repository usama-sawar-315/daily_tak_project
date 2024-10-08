import 'package:daily_tak_project/ui/message_page.dart';
import 'package:daily_tak_project/utils/constant.dart';
import 'package:flutter/material.dart';

class ChatInboxPage extends StatelessWidget {
  const ChatInboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212832),
      body: Padding(
        padding: EdgeInsets.all(kPadding),
        child:  Column(
          children: [
            Row(
               crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 21,
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    width: 30,
                    'assets/images/boys.png',
                  ),
                ),
                const SizedBox(width: 3),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                        Text(
                          'Olivia',
                          style: TextStyle(fontSize: 16,color: Theme.of(context).dividerColor),
                    ),
                    Text(
                      'Hi! Please check the last task that...',
                      style: TextStyle(fontSize: 16,color: Theme.of(context).dividerColor),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/tasks.png',
                  width: 40,
                ),
                const SizedBox(width: 3),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rosi',
                      style: TextStyle(fontSize: 16,color: Theme.of(context).dividerColor),
                    ),
                    Text(
                      'Hi! Please check the last task that...',
                      style: TextStyle(fontSize: 16,color: Theme.of(context).dividerColor),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 21,
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    width: 30,
                    'assets/images/boys.png',
                  ),
                ),
                const SizedBox(width: 3),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Harry',
                      style: TextStyle(fontSize: 16,color: Theme.of(context).dividerColor),
                    ),
                    Text(
                      'Hi! Please check the last task that...',
                      style: TextStyle(fontSize: 16,color: Theme.of(context).dividerColor),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/tasks.png',
                  width: 40,
                ),
                const SizedBox(width: 3),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'joss',
                      style: TextStyle(fontSize: 16,color: Theme.of(context).dividerColor),
                    ),
                    Text(
                      'Hi! Please check the last task that...',
                      style: TextStyle(fontSize: 16,color: Theme.of(context).dividerColor),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 21,
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    width: 30,
                    'assets/images/boys.png',
                  ),
                ),
                const SizedBox(width: 3),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Portal',
                      style: TextStyle(fontSize: 16,color: Theme.of(context).dividerColor),
                    ),
                    Text(
                      'Hi! Please check the last task that...',
                      style: TextStyle(fontSize: 16,color: Theme.of(context).dividerColor),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.bottomRight,
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MessagePage()));

                },
                color: Theme.of(context).primaryColor,
                child:  Text(
                    'Lets Start',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:Theme.of(context).primaryColorDark)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
