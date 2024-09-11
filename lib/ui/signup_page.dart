import 'package:daily_tak_project/ui/login_page.dart';
import 'package:daily_tak_project/ui/widgets/custom_text_field_widget.dart';
import 'package:daily_tak_project/utils/constant.dart';
import 'package:flutter/material.dart';

class signupPage extends StatelessWidget {
  const signupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFF212832),
      body:  Padding(
        padding: EdgeInsets.all(kPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Day',
                    style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  Text(
                    'Task',
                    style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color:Colors.amber),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Creat Your Account',
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
              ),
              const SizedBox(height: 20),
              const CustomTextFieldWidget(title: 'Name'),
              const SizedBox(height: 20),
              const CustomTextFieldWidget(title: 'Email'),
              const SizedBox(height: 20),
              const CustomTextFieldWidget(title: 'Password'),
              const SizedBox(height: 40),
              MaterialButton(
                minWidth: double.infinity,
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => const LoginPage()));
                },
                color: Theme.of(context).primaryColor,
                child: const Text('Signup',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black)),
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
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have any Account?',style: TextStyle(fontSize: 17,color: Colors.white),
                  ),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                      );
                    },
                    child: Text(
                      'Login',style: TextStyle(fontSize: 17,color:Theme.of(context).primaryColor,fontWeight: FontWeight.bold),
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
