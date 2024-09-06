import 'package:daily_tak_project/utils/constant.dart';
import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFF212832),
      appBar: AppBar(
        backgroundColor:  const Color(0xFF212832),
        title: Center(
          child: Text(
            'Creat New Task',
            style:
            TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Theme.of(context).dividerColor),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(kPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Task title',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:Theme.of(context).dividerColor),
              ),
              Container(
                width: 300,
                margin: EdgeInsets.all(7),
                padding: const EdgeInsetsDirectional.all(10),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorLight,
                ),
                child: Text(
                  'Hi-Fi wireframe',
                  style: TextStyle(fontSize: 20,color: Theme.of(context).dividerColor),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Task Details',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:Theme.of(context).dividerColor),
              ),
              Container(
                margin: EdgeInsets.all(7),
                padding: const EdgeInsetsDirectional.all(10),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorLight,
                ),
                child: Text(
                  'Lome lam is a simple project maker Lome lam is a simple project maker Lome lam is a simple project maker Lome lam is a simple project maker',
                  style: TextStyle(fontSize: 15,color: Theme.of(context).dividerColor),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Add Team Members',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:Theme.of(context).dividerColor),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 140,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorLight,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/tasks.png',
                          width: 30,
                        ),
                        SizedBox(width: 3),
                        Text(
                          'Rebort',
                          style: TextStyle(color: Theme.of(context).dividerColor,),
                        ),
                        const SizedBox(width: 25),
                        Icon(Icons.cancel_presentation_outlined,color: Theme.of(context).dividerColor),
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    width: 130,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorLight,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/tasks.png',
                          width: 30,
                        ),
                        SizedBox(width: 3),
                        Text(
                          'oilvia',
                          style: TextStyle(color: Theme.of(context).dividerColor,),
                        ),
                        const SizedBox(width: 20),
                        Icon(Icons.cancel_presentation_outlined,color: Theme.of(context).dividerColor),
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    width: 40,
                    height: 40,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                    ),
                    child:  Icon(Icons.add_box_outlined,color: Theme.of(context).primaryColorDark),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Time And Date',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:Theme.of(context).dividerColor),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                  width: 140,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColorLight,
                   ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          color: Theme.of(context).primaryColor,
                          child: Icon(Icons.timer_outlined),
                        ),
                        Text(
                          '10:30 AM',
                          style: TextStyle(fontSize: 17,color: Theme.of(context).dividerColor,),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 140,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorLight,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          color: Theme.of(context).primaryColor,
                          child: Icon(Icons.calendar_month),
                        ),
                        Text(
                          '05/11/2001',
                          style: TextStyle(fontSize: 17,color: Theme.of(context).dividerColor,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              MaterialButton(
                minWidth: double.infinity,
                onPressed: () {
                  // Navigator.of(context).pushReplacement(
                  //     MaterialPageRoute(builder: (context) =>  BottomBarPage()));
                  // // }
                },
                color: Theme.of(context).primaryColor,
                child: const Text('Create',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
