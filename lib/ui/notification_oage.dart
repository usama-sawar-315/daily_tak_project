import 'package:daily_tak_project/utils/constant.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212832),
      appBar: AppBar(
        backgroundColor:  const Color(0xFF212832),
        title: Center(
          child: Text(
            'Notifications',
            style:
            TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Theme.of(context).dividerColor),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(kPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:Theme.of(context).dividerColor),
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/boys.png',
                  width: 40,
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
                Image.asset(
                  'assets/images/boys.png',
                  width: 40,
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
            Text(
              'Earlier',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:Theme.of(context).dividerColor),
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/boys.png',
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
                Image.asset(
                  'assets/images/tasks.png',
                  width: 40,
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
          ],
        ),
      ),
    );
  }
}
