import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  void _erase(){
      setState(() {
        _userController.clear();
        _passwordController.clear();
      });
  }
  void _showMe(){
    setState(() {
        _userController.text;
        
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.blueGrey,
      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(
          children: <Widget>[
            new Image.asset('images/097 face.png',
                width: 90.0, height: 90.0, color: Colors.lightBlue),
            //form
            new Container(
              height: 180.0,
              width: 380.0,
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _userController,
                    decoration: new InputDecoration(
                        hintText: 'User Name', icon: new Icon(Icons.person)),
                  ),
                  new TextField(
                    controller: _passwordController,
                    decoration: new InputDecoration(
                        hintText: 'Password', icon: new Icon(Icons.lock)),obscureText: true,
                  ),
                new Padding(padding : new EdgeInsets.all(10.0)),
                  new Center(
                    
                    child: new Row(
                      children: <Widget>[
                          new Container(
                            margin: EdgeInsets.only(left : 38.0),
                            child: new RaisedButton(
                              onPressed: _showMe,
                              color: Colors.redAccent,
                              child : new Text("Login", style: new TextStyle(color: Colors.white,fontSize: 17.0),)
                            ),
                             
                          ),
                            new Container(
                            margin: EdgeInsets.only(left : 150.0),
                            child: new RaisedButton(
                              onPressed: _erase,
                              color: Colors.redAccent,
                              child : new Text("Reset", style: new TextStyle(color: Colors.white,fontSize: 17.0),)
                            ),
                          )
                      ],
                    ),
                  )
                ],
                
              ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: new Text(_userController.text,style: new TextStyle(fontSize: 30.0,color: Colors.white),),
               )
              ],
            )
          ],
        ),
      ),
    );
  }
}
