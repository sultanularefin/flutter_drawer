import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'Drawer App',
  home: HomeScreen(),
));

class HomeScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Tutorial'),
        backgroundColor: Colors.deepOrange,
      ),
      drawer: Drawer(
          child:ListView(
            children: <Widget>[
              DrawerHeader(decoration: BoxDecoration(
                  gradient: LinearGradient
                    (colors: <Color>[
                    Colors.deepOrange,
                    Colors.deepOrange,
                  ])
              ),
                  child:Container(
                    child: Column(
                      children: <Widget>[
                        Material(

                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                            elevation: 10,
                            child:Padding(padding: EdgeInsets.all(8.0),
                              child:Image.asset('images/flutter-logo.svg',
                              width: 80,
                              height:80,
                            ),)
//                          child:
                        ),
                        Padding(
                        padding: EdgeInsets.all(8.01),
                             child:Text('Flutter',
                            style: TextStyle(color: Colors.white,
                            fontSize: 16.0)))
                      ],

                    ),
                  )
                  ),
              CustomListTile(Icons.person,'Profile',()=>[]),
              CustomListTile(Icons.notifications,'Notifications',()=>[]),
              CustomListTile(Icons.settings,'Settings',()=>[]),
              CustomListTile(Icons.lock,'Log Out',()=>[]),
            ],
          )
      ),


    );
  }
}


class CustomListTile extends StatelessWidget{

  IconData icon;
  String text;
  Function onTap;

  CustomListTile(this.icon, this.text, this.onTap);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(padding: const EdgeInsets.fromLTRB(8.0,0,8.0,0),
        child:Container(
            decoration:BoxDecoration(
                border: Border(
                    bottom:BorderSide(color:Colors.lightGreen)

                ),),
                child:InkWell(
                    splashColor: Colors.deepOrangeAccent,
                    onTap: ()=>onTap,
                    child:Container(
                        height: 55,
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(children: <Widget>[
                              Icon(icon),
                              Padding(padding:const EdgeInsets.all(8.0),
                                child:Text(text,
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              )

                            ],
                            ),

                            Icon(Icons.arrow_right),

                          ],
                        )
                    )
                )

            )


    );
  }
}


