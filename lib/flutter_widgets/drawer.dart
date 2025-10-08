// // THIS IS CUSTOM DRAWER

import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        width: 300,
        semanticLabel: "Hello World",
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.blue,
        shadowColor: Colors.red,
        elevation: 20,
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.lightGreen, Colors.blueAccent],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6V1NHpqrmEQH_NYts3Lp1X6g4MWRRLH_1gg&s",
                      ),
                    ),
                    SizedBox(height: 8),
                    Text("Lucky Parihar"),
                    Text("luckysinghparihar@gmail.com"),
                  ],
                ),
              ),
            ),
            Divider(),
            Expanded(
              child: SingleChildScrollView(
      
                child: Column(
                  children: [
                    _drawerTile(
                      Icon(Icons.email_outlined),
                      "Email",
                      "Check your inbox",
                      Colors.red,
                    ),
                    _drawerTile(
                      Icon(Icons.account_balance_outlined),
                      "Account Balance",
                      "View your balance",
                      Colors.green,
                    ),
                    _drawerTile(
                      Icon(Icons.notifications_outlined),
                      "Notifications",
                      "View recent alerts",
                      Colors.orange,
                    ),
                    _drawerTile(
                      Icon(Icons.settings_outlined),
                      "Settings",
                      "Change app settings",
                      Colors.blue,
                    ),
                    _drawerTile(
                      Icon(Icons.help_outline),
                      "Help",
                      "Get help and support",
                      Colors.purple,
                    ),
                    _drawerTile(
                      Icon(Icons.person_outline),
                      "Profile",
                      "View and edit profile",
                      Colors.teal,
                    ),
                    _drawerTile(
                      Icon(Icons.shopping_cart_outlined),
                      "Orders",
                      "Check your orders",
                      Colors.brown,
                    ),
                    _drawerTile(
                      Icon(Icons.favorite_outline_outlined),
                      "Favorites",
                      "Your favorite items",
                      Colors.pink,
                    ),
                    _drawerTile(
                      Icon(Icons.share_outlined),
                      "Share",
                      "Share app with friends",
                      Colors.cyan,
                    ),
                    _drawerTile(
                      Icon(Icons.feedback_outlined),
                      "Feedback",
                      "Send us feedback",
                      Colors.indigo,
                    ),
                    _drawerTile(
                      Icon(Icons.lock_outline),
                      "Security",
                      "Update security settings",
                      Colors.deepOrange,
                    ),
                    _drawerTile(
                      Icon(Icons.calendar_today),
                      "Calendar",
                      "View schedule",
                      Colors.lightBlue,
                    ),
                    _drawerTile(
                      Icon(Icons.map),
                      "Location",
                      "Find nearby places",
                      Colors.greenAccent,
                    ),
                    _drawerTile(
                      Icon(Icons.photo),
                      "Gallery",
                      "View your photos",
                      Colors.amber,
                    ),
                    _drawerTile(
                      Icon(Icons.music_note),
                      "Music",
                      "Play your music",
                      Colors.deepPurple,
                    ),
                    _drawerTile(
                      Icon(Icons.logout_outlined),
                      "Logout",
                      "Sign out of your account",
                      Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _drawerTile(Icon icon, String title, String subTitle, Color iconColor) {
  return ListTile(
    // onTap: (){
    //   Navigator.pop(context);
    // },
    leading: Icon(icon.icon, color: iconColor),
    title: Text(title),
    subtitle: Text(subTitle),
    trailing: Icon(Icons.arrow_forward, color: Colors.black),
  );
}

// // THIS IS DRAWER WITH INBUILT METHODS
//
// import 'package:flutter/material.dart';
//
// class CustomDrawer extends StatelessWidget {
//   const CustomDrawer({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       elevation: 20,
//       shadowColor: Colors.red,
//       surfaceTintColor: Colors.yellow,
//       semanticLabel: "Drawer Menu",
//       backgroundColor: Colors.blue,
//       child: Column(
//         children: [
//           // Fixed Header
//           DrawerHeader(
//             decoration: BoxDecoration(color: Colors.yellow),
//             child: SizedBox(
//               width: double.infinity,
//
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   CircleAvatar(
//                     radius: 30,
//                     child: Icon(Icons.person_outline, size: 30),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     "Lucky Parihar",
//                     style: TextStyle(fontSize: 18, color: Colors.black),
//                   ),
//                   Text(
//                     "luckysinghparihar@gmail.com",
//                     style: TextStyle(fontSize: 14),
//                   ),
//                   Divider(color: Colors.red, thickness: 1),
//                 ],
//               ),
//             ),
//           ),
//
//           // Fixed Divider
//
//
//           // Scrollable Items
//           Expanded(
//             child: ListView.builder(
//               padding: EdgeInsets.zero,
//               itemCount: 20,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   shape: Border.all(),
//                   leading: Icon(Icons.person_outline, color: Colors.blue),
//                   title: Text("Title ${index + 1}"),
//                   subtitle: Text("Subtitle ${index + 1}"),
//                   trailing: Icon(Icons.exit_to_app_outlined),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
