import 'package:daily_tak_project/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class RealWebPage extends StatelessWidget {
  const RealWebPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xFF212832),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.white),
        backgroundColor:  const Color(0xFF212832),
        title: Center(
          child: Text('To Details',
              style:
              TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Theme.of(context).dividerColor),
      ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(kPadding),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Real Estate App Design',
                      style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Theme.of(context).dividerColor),
                    ),
                    const SizedBox(height: 20),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration:  BoxDecoration(
                            color:Theme.of(context).primaryColor,
                          ),
                          child: const Icon(
                            Icons.calendar_month,color: Colors.black,size: 25,),
                        ),
                        Column(
                          children: [
                            Text(
                              'Due date',
                              style: TextStyle(fontSize: 15,color: Theme.of(context).dividerColor),
                            ),
                            Text(
                              '20 Jun',
                              style: TextStyle(fontSize: 20,color: Theme.of(context).dividerColor),
                            ),
                          ],
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration:  BoxDecoration(
                            color:Theme.of(context).primaryColor,
                          ),
                          child: const Icon(
                            Icons.account_box,color: Colors.black,size: 25,),
                        ),
                        Column(
                          children: [
                            Text(
                              'Team Member',
                              style: TextStyle(fontSize: 15,color: Theme.of(context).dividerColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Project Details',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Theme.of(context).dividerColor),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Lome lam is a simple project maker Lome lam is a simple project maker Lome lam is a simple project maker Lome lam is a simple project maker',
                      style: TextStyle(fontSize: 15,color: Theme.of(context).dividerColor),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Project Progress',
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Theme.of(context).dividerColor),
                        ),
                        CircularPercentIndicator(
                          radius: 60.0,
                          lineWidth: 5.0,
                          percent: 0.7,
                          center:  Text("75%",style: TextStyle(color: Theme.of(context).dividerColor)),
                          progressColor: Theme.of(context).primaryColor,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'All Tasks',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Theme.of(context).dividerColor),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsetsDirectional.all(5),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColorLight,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                          'User Interview',
                          style: TextStyle(fontSize: 20,color: Theme.of(context).dividerColor),
                    ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration:  BoxDecoration(
                              color:Theme.of(context).primaryColor,
                            ),
                            child: const Icon(
                              Icons.check_box,color: Colors.black,size: 25,),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsetsDirectional.all(5),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColorLight,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'WireFirms',
                            style: TextStyle(fontSize: 20,color: Theme.of(context).dividerColor),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration:  BoxDecoration(
                              color:Theme.of(context).primaryColor,
                            ),
                            child: const Icon(
                              Icons.check_box,color: Colors.black,size: 25,),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsetsDirectional.all(5),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColorLight,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Design System',
                            style: TextStyle(fontSize: 20,color: Theme.of(context).dividerColor),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration:  BoxDecoration(
                              color:Theme.of(context).primaryColor,
                            ),
                            child: const Icon(
                              Icons.check_box,color: Colors.black,size: 25,),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsetsDirectional.all(5),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColorLight,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Manage task',
                            style: TextStyle(fontSize: 20,color: Theme.of(context).dividerColor),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration:  BoxDecoration(
                              color:Theme.of(context).primaryColor,
                            ),
                            child: const Icon(
                              Icons.check_box,color: Colors.black,size: 25,),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          
          Container(
            padding: EdgeInsets.all(kPadding),
            child: MaterialButton(
              padding: EdgeInsetsDirectional.all(16.0),
                minWidth: double.infinity,
                onPressed: (){},
                color: Theme.of(context).primaryColor,
                child: Text('Add Task',
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Theme.of(context).primaryColorDark),)
            ),
          ),
        ],
      ),
    );
  }
}
