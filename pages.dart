import 'package:flutter/material.dart';
import 'custom_router.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar:AppBar(
        title:Text('FirstPage',style:TextStyle(fontSize: 36.0)),
        elevation: 4.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_next,
            color:Colors.white,
            size: 64.0
          ),
          onPressed:(){
            Navigator.of(context).push(CustomRoute(SecondPage()));
          },
        )
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text('SecondPage',style: TextStyle(fontSize: 36.0),),
        backgroundColor: Colors.greenAccent,
        elevation: 0.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_before,
            color: Colors.blueAccent,
            size: 64.0,
          ),

          onPressed: (){
            Navigator.of(context).pop(MaterialPageRoute(builder: (BuildContext context){
              return SecondPage();
            }));
          },
        ),
      ),
    );
  }
}