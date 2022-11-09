import 'package:flutter/material.dart';

class NavigationRailExample extends StatefulWidget {
  const NavigationRailExample({super.key});

  @override
  State<NavigationRailExample> createState() => _NavigationRailExampleState();
}

class _NavigationRailExampleState extends State<NavigationRailExample> {
  int _selectedIndex = 0;
  List<Color> _bgColor = [Colors.red, Colors.blue, Colors.green, Colors.orange];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            NavigationRail(
              useIndicator: true,
              indicatorColor: Colors.black26  ,             
              elevation: 5,
              backgroundColor: Colors.white,
              labelType: NavigationRailLabelType.all,
              unselectedLabelTextStyle: TextStyle(color: Colors.grey),
              destinations: const [
                NavigationRailDestination(
                    icon: Icon(Icons.home_outlined),
                    label: Text('Home'),
                    selectedIcon: Icon(Icons.home)),
                NavigationRailDestination(
                    icon: Icon(Icons.alarm),
                    label: Text('Alarm'),
                    selectedIcon: Icon(Icons.alarm_add)),
                NavigationRailDestination(
                    icon: Icon(Icons.cloud_outlined),
                    label: Text('Cloud'),
                    selectedIcon: Icon(Icons.cloud)),
                NavigationRailDestination(
                    icon: Icon(Icons.sunny_snowing),
                    label: Text('Sunny'),
                    selectedIcon: Icon(Icons.sunny)),
              ],
              selectedIndex: _selectedIndex,
              onDestinationSelected: (value) {
                _selectedIndex = value;
                setState(() {});
              },
            ),
            const VerticalDivider(
              color: Colors.green,
              thickness: 2,
              width: 2,
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width - 75,
              height: MediaQuery.of(context).size.height,
              color: _bgColor[_selectedIndex],
            )
          ],
        ),
      ),
    );
  }
}
