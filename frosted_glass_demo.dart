import 'package:flutter/material.dart';
import 'dart:ui';

class FrostedClassDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children:<Widget>[
          ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: Image.asset('images/1.png'),

          ),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                child: Opacity(
                  opacity: 0.5,
                  child:Container(
                    width: 500.0,
                    height: 700.0,
                    decoration: BoxDecoration(color:Colors.grey.shade200),
                    child: Center(
                      child: Text(
                        'QS',
                        style: Theme.of(context).textTheme.display3,
                      ),
                    ),

                  )
                ),

              ),
            ),
          ),
        ],
      )
    );
  }
}
