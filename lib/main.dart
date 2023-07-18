import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: UserPanel() ,
));


class UserPanel extends StatefulWidget {
  const UserPanel({Key? key}) : super(key: key);

  @override
  _UserPanelState createState() => _UserPanelState();
}
  class _UserPanelState extends State<UserPanel>{

    int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: const Text('Nazic'),
        centerTitle: true,
        backgroundColor: Colors.black45,
      ),
      body: const SafeArea(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 30),),
                Text('Nazar Radva',style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ), ),
                Padding(padding: EdgeInsets.only(top: 10),),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/moutain.jpg'),
                  radius: 50,
                ),
                Padding(padding: EdgeInsets.only(top: 10),),
                Row(
                  children: [
                    Icon(Icons.mail_outline, size: 25),
                    Padding(padding: EdgeInsets.only(left: 10),),
                    Text('admin@itNazarRadva',style: TextStyle(color: Colors.white),)
                  ],
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.cabin),
        backgroundColor: Colors.cyan,
        onPressed: (){
          setState(() {
            _count++;
          });
        },
      ),
    );
  }
}

