import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class draw extends StatefulWidget {
  const draw({Key? key}) : super(key: key);

   @override
  State<draw> createState() => _drawState();
}

class _drawState extends State<draw> {
  List<Widget> l = [first(), second(), third()];

  int cnt = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer")),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://www.google.com/search?q=image&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjSycXSs7z5AhXgHbcAHcPNDA4Q_AUoAXoECAEQAw&biw=1280&bih=913&dpr=1#imgrc=pcDOrt7aB9GzZM"),
                ),
                accountName: Text("abc"),
                accountEmail: Text("abc154@gmail.com")),
            ListTile(
              title: Text("First"),
              onTap: () {
                Navigator.pop(context);
                cnt = 0;
                setState(() {});
              },
            ),
            ListTile(
              title: Text("Second"),
              onTap: () {
                Navigator.pop(context);
                cnt = 0;
                setState(() {});
              },
            ),
            ListTile(
              title: Text("Third"),
              onTap: () {
                Navigator.pop(context);
                cnt = 0;
                setState(() {});
              },
            )
          ],
        ),
      ),
      body: l[cnt],
    );
  }
}

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
    );
  }
}

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
    );
  }
}

class third extends StatefulWidget {
  const third({Key? key}) : super(key: key);

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.tealAccent,
    );
  }
}
