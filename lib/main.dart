import 'package:flutter/material.dart';
import 'Demo/ListView_Demo.dart';
    void main(){
      runApp(App()
      );
    }

    class App extends StatelessWidget{
      @override
      Widget build(BuildContext context){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home:Home(),
          theme: ThemeData(
            primarySwatch: Colors.yellow
          ),
        );
      }
    }

    class Home extends StatelessWidget{

      @override
      Widget build(BuildContext context){
        return DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.menu),
                tooltip: 'Navigation',
                onPressed:() => debugPrint('Navation button is pressed'),
              ),
              title:Text('Home'),
              actions: <Widget>[
                IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Search',
                onPressed:() => debugPrint('Search button is pressed'),
              )],
              elevation: 30.0,
              bottom: TabBar(
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.black38,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.message)),
                  Tab(icon: Icon(Icons.mobile_screen_share)),
                  Tab(icon: Icon(Icons.mood_bad)),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                ListViewDemo(),
                Icon(Icons.local_airport,size:128.0,color:Colors.black),
                Icon(Icons.local_bar,size:128.0,color:Colors.black),
              ],
            ),
          ),
        );
      }
    }