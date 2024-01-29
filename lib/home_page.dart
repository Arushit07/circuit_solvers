import 'package:circuit_solvers/my_tab.dart';
import 'package:flutter/material.dart';
import 'package:circuit_solvers/my_tab.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> myTabs = [

    //past searches
    MyTab(
      iconPath: 'lib/images/search history.png',
    ),
    //leaderboard
    MyTab(
      iconPath: 'lib/images/Leaderboard.png',
    ),
    //camera
    MyTab(
      iconPath: 'lib/images/camera.png',
    ),
    //community fourm
    MyTab(
      iconPath: 'lib/images/search.png',
    ),
    //profile
    MyTab(
      iconPath: 'lib/images/profile.png',
    ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: myTabs.length, 
    child: Scaffold(
      backgroundColor: Colors.blue,
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text(
                "Choose your input",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(12), ),
                    padding: EdgeInsets.all(12),
                  child: Icon(Icons.notifications,
                  color: Colors.white,),
                )
            ],),

            SizedBox(
              height: 25,
            ),

            //search bar
            Container(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(Icons.search,
                  color: Colors.white),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Search',
                  style: TextStyle(
                    color: Colors.white, 
                  ),)

              
            ],),
            ),

            SizedBox(
              height: 25,
            ),

            TabBar(tabs: myTabs),

      
           

         

          
          ],),
        ));
    

      
  
      Container(
        height: 450,
        width: 400,
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.circular(16),
        ),),



    
      Row(
        children: [

          Container(
            height: 180,
            width: 160,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(16),
            ),

      ),
      SizedBox(
        width: 10,
      ),

          Container(
            height: 180,
            width: 160,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(16),
            ),

      ),
          ],
        )    
        
      ));
    
  }
}