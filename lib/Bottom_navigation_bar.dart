import 'package:flutter/material.dart';

class BottomNavBarClass extends StatefulWidget {
  @override
  _BottomNavigationBarState createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavBarClass> {
  int _selectedIndex = 0;

  List<Widget> widgetOptions = <Widget>[
    Text(
      'TAB: 0',
      style: TextStyle(fontSize: 30),
    ),
    Text(
      'TAB: 1',
      style: TextStyle(fontSize: 30),
    ),
    Text(
      'TAB: 2',
      style: TextStyle(fontSize: 30),
    ),
    Text(
      'TAB: 3',
      style: TextStyle(fontSize: 30),
    ),
    Text(
      'TAB: 4',
      style: TextStyle(fontSize: 30),
    ),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomAppBar with FAB'),
        centerTitle: true,
      ),
      body: Center(
        child: widgetOptions.elementAt(_selectedIndex),
      ),

      //      ==========================>> floatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),

      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAliasWithSaveLayer,

        child: BottomNavigationBar(

          elevation: 20,
          unselectedItemColor: Colors.blueGrey,
          selectedItemColor: Colors.red,

          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
              ),
              label: 'This',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.layers),
              label: 'Is',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
              label: 'A',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.auto_awesome_mosaic),
              label: 'Bottom',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.report),
              label: 'Bar',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTap,
        ),
      ),

      // ========================>> Location of FloatingActionButton
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
