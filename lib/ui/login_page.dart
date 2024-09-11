import 'package:daily_tak_project/ui/bottom_bar_page.dart';
import 'package:daily_tak_project/ui/signup_page.dart';
import 'package:daily_tak_project/ui/widgets/custom_text_field_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  const Color(0xFF212832),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 22,horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Day',
                  style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.white),
                ),
                Text(
                  'Task',
                  style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color:Theme.of(context).primaryColor,),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Welcome Back',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
            ),
            const SizedBox(height: 20),
            const CustomTextFieldWidget(title: 'Email'),
            const SizedBox(height: 20),
            const CustomTextFieldWidget(title: 'Password'),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) =>  ForgotPasswordPage()),
                // );
              },
              child: const Text(
                textAlign: TextAlign.end,
                'Forgot Password?',
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const SizedBox(height: 30),
            MaterialButton(
              minWidth: double.infinity,
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) =>  const BottomBarPage()));
                // }
              },
              color: Theme.of(context).primaryColor,
              child: const Text('Login',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black)),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1,
                    endIndent: 10,
                    color: Theme.of(context).dividerColor,
                  ),
                ),
                Text(
                  'Or Continue With',
                  style: TextStyle(fontSize: 17,color:Theme.of(context).dividerColor),
                ),
                Expanded(
                  child: Divider(
                    thickness: 1,
                    indent: 10,
                    color: Theme.of(context).dividerColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColorLight,
              ),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.g_mobiledata_rounded,size: 30,color:Theme.of(context).primaryColor ),
                  Text(
                    'Google',
                    style: TextStyle(fontSize: 17,color:Theme.of(context).dividerColor),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have any account yet? ',style: TextStyle(fontSize: 17,color: Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const signupPage()),
                    );
                  },
                  child:  Text(
                    'SignUp',style: TextStyle(fontSize: 17,color:Theme.of(context).primaryColor,fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
