import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('asset/logo.png'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Rumah Tidak Layak Huni',
        style: TextStyle(fontSize: 25.0, color: Colors.black),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Aplikasi ini merupakan Aplikasi Rumah Tidak Layak Huni yang berisikan informasi mengenai rumah tidak layak huni yang terdapat di Kecamatan Bangkinang Kota, aplikasi ini juga dilengkapi dengan maps yang dapat memudahkan pengguna dalam mencari rumah yang tidak layak untuk dihuni tersebut',
        style: TextStyle(fontSize: 18.0, color: Colors.white),
        textAlign: TextAlign.justify,
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[alucard, welcome, lorem],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
