import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/fluttericon.dart';
import 'package:flutter_app/src/pages/login_page.dart';
import 'package:flutter_app/src/pages/register_page.dart';
import 'package:flutter_app/src/widgets/app_outlinebutton.dart';
import 'package:flutter_app/src/widgets/app_textfield.dart';
import 'package:flutter_app/themes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
        backgroundColor: Themes.colorPrimary,
      ),
      body: Center(
          child: Center(
        child: Text('Mi contenido'),
      )),
      drawer: Drawer(
          child: new ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Wendy Osorio"),
            accountEmail: Text("osoriowendy2000@gmail.com"),
            currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://i.postimg.cc/YSWTKjVF/profile-example.jpg')),
            decoration: BoxDecoration(
              color: Themes.colorHeader,
            ),
          ),
          ListTile(
            title: Text('Home'),
            leading: Icon(Icons.home),
            onTap: () => {},
          ),
          ListTile(
            title: Text('Settings'),
            leading: Icon(Icons.settings),
            onTap: () => {},
          ),
          ListTile(
              title: Text('Sign Off'),
              leading: Icon(Icons.exit_to_app),
              onTap: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    )),
                  }),
        ],
      )),
    );
  }
}
