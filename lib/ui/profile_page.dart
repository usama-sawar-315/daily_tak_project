import 'package:daily_tak_project/ui/login_page.dart';
import 'package:daily_tak_project/ui/widgets/custom_text_field_widget.dart';
import 'package:daily_tak_project/utils/constant.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212832),
      appBar: AppBar(
        backgroundColor:  const Color(0xFF212832),
        leading: Icon(Icons.arrow_back,color: Colors.white),
        title: Center(
          child: Text(
            'Profile',
            style:
            TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Theme.of(context).dividerColor),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.all(kPadding),
          child:  Column(
            children: [
                 Hero(
                   tag: 'usama',
                   child: CircleAvatar(
                     radius:50 ,
                     backgroundColor: Colors.white,
                     child: Image.asset(
                       width: 70,
                'assets/images/boys.png',
                     ),
                   ),
                 ),
              const SizedBox(height: 20),
              const CustomTextFieldWidget(title: 'Name'),
              const SizedBox(height: 20),
              const CustomTextFieldWidget(title: 'Email'),
              const SizedBox(height: 20),
              const CustomTextFieldWidget(title: 'password'),
              const SizedBox(height: 20),
              const CustomTextFieldWidget(title: 'Add to task'),
              const SizedBox(height: 20),
              const CustomTextFieldWidget(title: 'Privacy'),
              const SizedBox(height: 20),
              MaterialButton(
                minWidth: double.infinity,
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) =>  LoginPage()));
                  // }
                },
                color: Theme.of(context).primaryColor,
                child: const Text('Logout',style: TextStyle(fontSize: 20,color: Colors.black)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
