import 'package:flutter/material.dart';
import '../screen/walletScreen.dart';
import '../screen/exploreScreen.dart';
import '../screen/notificationScreen.dart';
import '../screen/settingScreen.dart';


class BottomNavigationScreen extends StatefulWidget {
  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {

  int _selectedTab = 0;
  List<Widget> _pageSelectors = [
    WalletScreen(),
    ExploreScreen(),
    NotificationScreen(),
    SettingScreen(),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _builderOffstageNavigation(0),
          _builderOffstageNavigation(1),
          _builderOffstageNavigation(2),
          _builderOffstageNavigation(3),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (int index){
          setState(() {
            _selectedTab = index;
          });

        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey[500],

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: "Wallet"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: "Explore"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notification"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings"
          ),
        ],
      ),
    );

  }
  Map<String, WidgetBuilder> _routeBuilder(BuildContext context, int index){
    return{
      "/": (context){
        return[
          WalletScreen(),
          ExploreScreen(),
          NotificationScreen(),
          SettingScreen(),
        ].elementAt(index);
      }
    };
  }
  
  Widget _builderOffstageNavigation(int index){
    var routBuilders = _routeBuilder(context, index);
    return Offstage(
      offstage:  _selectedTab != index,
      child: Navigator(
        onGenerateRoute: (routeSettings){
          return MaterialPageRoute(
              builder: (context) => routBuilders[routeSettings.name](context)
          );
        },
      ),
    );
  }
}
