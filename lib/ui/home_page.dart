import 'package:daily_tak_project/ui/profile_page.dart';
import 'package:daily_tak_project/ui/real_web_page.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Welcome Back',
              style: TextStyle(fontSize: 15,color:Theme.of(context).primaryColor),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Usama Sarwar',
                  style: TextStyle(fontSize: 24,color: Colors.white),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(
                           MaterialPageRoute(builder: (context) =>  ProfilePage()),
                    );
                  },
                  child: Hero(
                    tag: 'usama',
                    child: Image.asset(
                      width: 40,
                      'assets/images/tasks.png',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  width: 250,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 10.0),
                      filled: true,
                      fillColor: Theme.of(context).primaryColorLight,
                      label: const Text('Search',style: TextStyle(color: Colors.white)),
                      prefixIcon:  const Icon(Icons.search,color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  width: 50,
                  height: 50,
                  decoration:  BoxDecoration(
                    color:Theme.of(context).primaryColor,
                    borderRadius:const BorderRadius.all(Radius.circular(8)),
                  ),
                  child: const Icon(
                    Icons.image_search,color: Colors.black,size: 25,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Completed Tasks',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
                ),
                Text(
                  'See All',
                  style: TextStyle(fontSize: 17,color: Theme.of(context).primaryColor,),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) =>  RealWebPage()),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    height: 170,
                    width: 150,
                    decoration:  BoxDecoration(
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          'Real Estate Website Design',
                          style: TextStyle(fontSize: 20,color: Colors.black),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'Team Member',
                          style: TextStyle(fontSize: 13,color: Colors.black),
                        ),
                        const SizedBox(height: 5),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Compressed',
                              style: TextStyle(fontSize: 13,color: Colors.black),
                            ),
                            Text(
                              '50%',
                              style: TextStyle(fontSize: 13,color: Colors.black),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        LinearPercentIndicator(
                          width: 100.0,
                          lineHeight: 8.0,
                          percent: 0.5,
                          progressColor: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.all(5),
                  height: 170,
                  width: 150,
                  decoration:  BoxDecoration(
                    color: Theme.of(context).primaryColorLight,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Finance Mobile App Design',
                        style: TextStyle(fontSize: 22,color: Theme.of(context).dividerColor),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Team Member',
                        style: TextStyle(fontSize: 13,color: Theme.of(context).dividerColor),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Compressed',
                            style: TextStyle(fontSize: 13,color: Theme.of(context).dividerColor),
                          ),
                          Text(
                            '100%',
                            style: TextStyle(fontSize: 13,color:Theme.of(context).dividerColor),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      LinearPercentIndicator(
                        width: 100.0,
                        lineHeight: 8.0,
                        percent: 0.0,
                        progressColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'OnGoing Projects',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Theme.of(context).dividerColor),
                ),
                Text(
                  'See All',
                  style: TextStyle(fontSize: 17,color: Theme.of(context).primaryColor,),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColorLight,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mobile App FrameWork',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Theme.of(context).dividerColor),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Team Member',
                    style: TextStyle(fontSize: 15,color: Theme.of(context).dividerColor),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment:CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Don on : 21 March',
                        style: TextStyle(fontSize: 15,color: Theme.of(context).dividerColor),
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
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColorLight,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Real Estate website Design',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Theme.of(context).dividerColor),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Team Member',
                    style: TextStyle(fontSize: 15,color: Theme.of(context).dividerColor),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Don on : 20 Jun',
                        style: TextStyle(fontSize: 15,color: Theme.of(context).dividerColor),
                      ),
                      CircularPercentIndicator(
                        radius: 60.0,
                        lineWidth: 5.0,
                        percent: 0.5,
                        center:  Text("50%",style: TextStyle(color: Theme.of(context).dividerColor)),
                        progressColor: Theme.of(context).primaryColor,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
