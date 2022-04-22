import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/screens/amazone.dart';
import 'package:untitled/screens/github.dart';
import 'package:untitled/screens/google.dart';
import 'package:untitled/screens/youtube.dart';


class MyTabs extends StatefulWidget {
  @override
  _MytabsState createState() => _MytabsState();

}

class _MyTabsState {
}


class _MytabsState extends State<MyTabs> with SingleTickerProviderStateMixin {

  late TabController tabController;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  //dispose function
  @override
  void dispose()
  {
    super.dispose();
    tabController.dispose();
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(


      bottomNavigationBar: Container(
        height: 50,
        child: TabBar(
          controller: tabController,
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.blue,
          labelStyle: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
          tabs: <Tab>[
            Tab(icon: Icon(FontAwesomeIcons.google),
            text: "Google",),
            Tab(icon: Icon(FontAwesomeIcons.amazon),
            text: "Amazone",),
            Tab(icon: Icon(FontAwesomeIcons.youtube),
              text: "YouTube",),
            Tab(icon: Icon(FontAwesomeIcons.github),
              text: "Github",),
        ],

        ),
    ),


      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: tabController,
        children: <Widget>[
          GoogleScreen(),
          AmazonScreen(),
          YouTubeScreen(),
          GithubScreen(),

        ],

      ),


    );




  }



}


