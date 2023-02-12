import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imagepic =
        "data:image/jpeg;base64,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";
    return Drawer(
      child: Container(
        color: Colors.blueGrey,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Pratik"),
                accountEmail: Text("pratikraopr11@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imagepic),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "mail",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
