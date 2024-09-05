import 'package:daily_tak_project/ui/login_page.dart';
import 'package:daily_tak_project/utils/constant.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xFF212832),
      body: Padding(
        padding: EdgeInsets.all(kPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  'Day',
                  style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold, color: Theme.of(context).dividerColor),
                ),
                Text(
                  'Task',
                  style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Theme.of(context).primaryColor),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Image.asset('assets/images/home.jpg'),
            const SizedBox(height: 20),
             Text(
              'Manage Your Task with day Task',
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Theme.of(context).dividerColor),
            ),
            const SizedBox(height: 30),
            MaterialButton(
              minWidth: double.infinity,
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const LoginPage()));
                // }
              },
              color: Theme.of(context).primaryColor,
              child:  Text(
                  'Lets Start',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:Theme.of(context).primaryColorDark)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
