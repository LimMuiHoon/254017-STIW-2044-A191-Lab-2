import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: new ThemeData(
          backgroundColor: Colors.blue,
          scaffoldBackgroundColor: const Color(0xFFEFEFEF),
          primarySwatch: Colors.red),
      home: new LoginPage(),
    );
  }
}

bool _isChecked = true;
final TextEditingController _emcontroller = TextEditingController();
//String _email = "";
final TextEditingController _pscontroller = TextEditingController();
//String _pass = "";

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body: new Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/logo.png',
              width: 300,
              height: 300,
            ),
            TextField(
                controller: _emcontroller,
                decoration: InputDecoration(
                  labelText: 'Email',
                  icon: Icon(Icons.email),
                )),
            TextField(
              controller: _pscontroller,
              decoration: InputDecoration(
                labelText: 'Password',
                icon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool value) {
                    _onChange(value);
                  },
                ),
                Text('Remember Me', style: TextStyle(fontSize: 17))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              minWidth: 300,
              height: 50,
              child: Text('Login'),
              color: Colors.blue,
              textColor: Colors.white,
              elevation: 20,
              onPressed: _onPress,
            ),
            SizedBox(
              height: 29,
            ),
            Text("Register new account"),
            SizedBox(
              height: 29,
            ),
            Text('Forgot password')
          ],
        ),
      ),
    );
  }

  void _onPress() {
    print(_emcontroller.text);
    print(_pscontroller.text);
  }

  void _onChange(bool value) {
    setState(() {
      _isChecked = value;
      print('Check value $value');
    });
  }
}
