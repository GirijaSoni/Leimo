import 'package:flutter/material.dart';
import 'animated_widget.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {

  AnimationController controller;

  Animation<double> animation;
  Animation<double> animation1;
  Animation<double> animation3;
  Animation<double> animation4;
  initState(){
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    animation =
    CurvedAnimation(parent: controller,curve:Interval(0.0,0.1,curve:Curves.easeOut));
    animation1 = CurvedAnimation(parent: controller,curve: Interval(0.3,0.4,curve:Curves.easeOut));
    animation3 = CurvedAnimation(parent: controller,curve: Interval(0.1,0.2,curve:Curves.easeOut));
    animation4 = CurvedAnimation(parent: controller,curve: Interval(0.2,0.3,curve:Curves.easeOut));

    controller.forward();


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  backgroundColor: Colors.white70,
      body:Center(

        child: Stack(
          children: [
             Container(

               height:400,width:400,
          ),
            MyWidget(animation3: animation3,top:4,left:4,right:null,bottom:null,str:'assets/orange.png'),
            MyWidget(animation3: animation1,top:4,left:null,right:4,bottom:null,str:'assets/red.png'),
            MyWidget(animation3: animation,top:null,left:4,right:null,bottom:4,str:'assets/blue.png'),
            MyWidget(animation3: animation4,top:null,left:null,right:4,bottom:4,str:'assets/purple.png'),
            Positioned(
              top:2,
              bottom:2,
              left: 2,
              right: 2,
              child: Image.asset('assets/logo.png',

              //  color: Colors.grey,
              ),
            )
          ],
        ),
      )
    );
  }
}


