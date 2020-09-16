import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _BottomNavigationColor= Colors.blueAccent;

  @override
    Widget build(BuildContext context){
      return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _BottomNavigationColor,
              ),
                  title:Text(
                    'Home',
                    style:TextStyle(color: _BottomNavigationColor),
                  )
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.email,
                  color: _BottomNavigationColor,
                ),
                title:Text(
                  'Email',
                  style:TextStyle(color: _BottomNavigationColor),
                )
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.pages,
                  color: _BottomNavigationColor,
                ),
                title:Text(
                  'Pages',
                  style:TextStyle(color: _BottomNavigationColor),
                )
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: _BottomNavigationColor,
                ),
                title:Text(
                  'Search',
                  style:TextStyle(color: _BottomNavigationColor),
                )
            )
          ],
        )

      );
    }
  }

