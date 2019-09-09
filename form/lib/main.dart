
import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  title: 'Forms in Flutter',
  home: new LoginPage(),
));

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoginPageState();
}

class _LoginData {
  String email = '';
  String password = '';
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double radius = 30.0;
    final double fontsize = 18.0;
    final double height = 50;

    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: new Center(child: new Text('Login', textAlign: TextAlign.center, ))
        
        //title: new Text('Login'),
        
      ),
      body: new Scaffold(
      backgroundColor: Color.fromRGBO(20, 28, 33, 1), //#202833
      body: new Container(
        padding: new EdgeInsets.all(100.0),
        child: new Form(
          key: this._formKey,
          child: new ListView(
            children: <Widget>[
              new TextFormField(
                style: TextStyle(
                  color: Colors.white,
                ),
                keyboardType: TextInputType.emailAddress, // Use email input type for emails.
                decoration: new InputDecoration(  
                  hintText: 'you@example.com',
                  labelText: 'E-mail ID',
                  enabledBorder: new UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  labelStyle: TextStyle(
                    color: Colors.white
                  ),
                  hintStyle: TextStyle(
                    color: Colors.white
                  )
                )
              ),
              SizedBox(height: 10.0),
              new TextFormField(
                obscureText: true, // Use secure text for passwords.          
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: new InputDecoration(
                  hintText: 'Password',
                  labelText: 'Password',
                  enabledBorder: new UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  labelStyle: TextStyle(
                    color: Colors.white
                  ),
                  hintStyle: TextStyle(
                    color: Colors.white
                  )
                )
              ),
              new Container(
                decoration: BoxDecoration(
                  
                ),
                width: screenSize.width,
                child: new InkWell(
                  onTap: () => print('hello'),
                  child: new Container(
                    //width: 100.0,
                    height: height,
                    decoration: new BoxDecoration(
                      gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Colors.lightBlue, Colors.lightGreen]
                    ),
                      borderRadius: new BorderRadius.circular(radius),
                    ),
                    child: new Center(
                      child: new Text(
                        'Login', 
                        style: new TextStyle(
                          fontSize: fontsize, 
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
                  
                margin: new EdgeInsets.only(
                  top: 100.0
                ),
              )
            ],
          ),
        )
      ),
    )
    );
  }
}
