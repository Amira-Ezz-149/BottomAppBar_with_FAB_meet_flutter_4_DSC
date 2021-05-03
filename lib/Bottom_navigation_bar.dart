import 'package:flutter/material.dart';

class BottomNavBarClass extends StatefulWidget {
  @override
  _BottomNavigationBarState createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavBarClass> {
  int _selectedIndex = 0;

  List<Widget> widgetOptions = <Widget>[
    //style: TextStyle(fontSize: 30),
    Text(
      'TAB: 0', style: TextStyle(fontSize: 30),
    ),
    Text(
      'TAB: 1', style: TextStyle(fontSize: 30),
    ),
    Text(
      'TAB: 2', style: TextStyle(fontSize: 30),
    ),
    Text(
      'TAB: 3', style: TextStyle(fontSize: 30),
    ),
    Text(
      'TAB: 4', style: TextStyle(fontSize: 30),
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
        //  child : widgetOptns.elementAt(_selectedIndex),
        child: widgetOptions.elementAt(_selectedIndex),

        
      ),


      //      ==========================>> floatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),

    bottomNavigationBar: BottomAppBar(
  color: Colors.yellow,
  child:BottomNavigationBar(
      unselectedItemColor: Colors.blueGrey,
      selectedItemColor: Colors.red,
      backgroundColor: Colors.yellow,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.menu,),
          label: 'This',
          // backgroundColor: Colors.red
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.layers),
          label: 'Is',
          //   backgroundColor: Colors.indigo

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add, color: Colors.white,),
          label: 'A',
          // backgroundColor: Colors.yellow,

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.auto_awesome_mosaic),
          label: 'Bottom',
          // backgroundColor: Colors.blue,

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.report),
          label: 'Bar',
          //backgroundColor: Colors.green,

        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTap,
      // fixedColor: Colors.indigo,
       ) ,

),

      //     ===========================>> BottomNavigationBar

/*
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.blueGrey,
        selectedItemColor: Colors.red,
        backgroundColor: Colors.yellow,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded,),
            label: 'profile',
           // backgroundColor: Colors.red
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
           label: 'settings',
           //   backgroundColor: Colors.indigo

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'add',
             // backgroundColor: Colors.yellow,

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: 'phone',
             // backgroundColor: Colors.blue,

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'message',
              //backgroundColor: Colors.green,

          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
       // fixedColor: Colors.indigo,
     , )
*/


      // ========================>> Location of FloatingActionButton
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}
