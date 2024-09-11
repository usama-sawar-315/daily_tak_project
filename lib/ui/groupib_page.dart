import 'package:daily_tak_project/utils/constant.dart';
import 'package:flutter/material.dart';

class GroupIbPage extends StatelessWidget {
  const GroupIbPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212832),
      body: Padding(
        padding: EdgeInsets.all(kPadding),
        child:  Column(
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(30))
                    ),
                    child: const Icon(Icons.account_box)
                ),
                const SizedBox(width: 10),
                Text(
                  'Create a group',
                  style: TextStyle(fontSize: 16,color: Theme.of(context).dividerColor),
                ),
              ],
            ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/tasks.png',
                        width: 50,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'App Developers',
                        style: TextStyle(fontSize: 16,color: Theme.of(context).dividerColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          width: 40,
                          'assets/images/boys.png',
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Front_End',
                        style: TextStyle(fontSize: 16,color: Theme.of(context).dividerColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/tasks.png',
                        width: 50,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Back_End',
                        style: TextStyle(fontSize: 16,color: Theme.of(context).dividerColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          width: 40,
                          'assets/images/boys.png',
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Testing',
                        style: TextStyle(fontSize: 16,color: Theme.of(context).dividerColor),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
