import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home:ninjacard(),
    ));
class ninjacard extends StatefulWidget{
  @override
  _ninjacardState createState() => _ninjacardState();
}

class _ninjacardState extends State<ninjacard> {
    int nooffans = 0;
    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title: Text('Jung Kook - id '),
                centerTitle: true,
                backgroundColor: Colors.purpleAccent,
                 ),
            floatingActionButton: FloatingActionButton(
                    onPressed: (){
                  setState(() {
                       nooffans += 1;
                  });
            },
                child: Icon(Icons.add),
                backgroundColor: Colors.purpleAccent,
            ),
            body: Padding(
                padding: EdgeInsets.fromLTRB(20.0, 30.0, 10.0, 20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                        Center(
                          child: CircleAvatar(
                              backgroundImage: AssetImage('assets/PHONE.jpg'),
                              radius: 80.0,
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        Text(
                            'NAME',
                            style: TextStyle(
                                color: Colors.pinkAccent,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,

                            ),
                        ),
                        Text(
                            'World-wide Handsome',

                            style: TextStyle(
                                color: Colors.pink,
                                fontSize: 28.0,

                            ),
                        ),
                        SizedBox(height: 20.0),
                        Text(
                            'Age ',
                            style: TextStyle(
                                color: Colors.pinkAccent,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,

                            ),
                        ),
                        Text(
                            'Forever Young',

                            style: TextStyle(
                                color: Colors.pink,
                                fontSize: 28.0,

                            ),
                        ),
                        SizedBox(height: 20.0),
                        Text(
                            'Number Of Fans ',
                            style: TextStyle(
                                color: Colors.pinkAccent,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,

                            ),
                        ),

                        Text(
                            '$nooffans',

                            style: TextStyle(
                                color: Colors.pink,
                                fontSize: 28.0,

                            ),
                        ),
                        SizedBox(height:30.0),
                        Row(
                            children: <Widget>[
                                Icon(
                                    Icons.phone_android,
                                ),
                                Text('8088997813',
                                    style: TextStyle(
                                        letterSpacing: 1.0,
                                    ),
                                ),

                            ],
                        )

                    ],
                ),

            ),
            backgroundColor: Colors.purple[100],
        );
    }
}




