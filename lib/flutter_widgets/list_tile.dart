import 'package:flutter/material.dart';

class CustomListTile extends StatefulWidget {
  const CustomListTile({super.key});

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        spacing: 5,
        children: [
          SizedBox(height: 10),
          _customListTile(context),
          _customListTile(context),
          _customListTile(context),
          _customListTile(context),
        ],
      ),
    );
  }
}

Widget _customListTile(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ListTile(
      tileColor: Colors.blue,
      // shape: StadiumBorder(side: BorderSide(color: Colors.green)),
      // shape: CircleBorder(
      //   eccentricity: 1,
      //   side: BorderSide(color: Colors.red, width: 1),
      // ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      leading: Icon(Icons.person_outline, color: Colors.white),

      hoverColor: Colors.green,
      splashColor: Colors.yellow,
      iconColor: Colors.red,
      // autofocus: true,
      // focusColor: Colors.brown,
      style: ListTileStyle.drawer,
      dense: true,
      // selectedTileColor: Colors.red,


      // horizontalTitleGap: 150,
      // selected: true,
      // selectedColor: Colors.green,
      // titleAlignment: ListTileTitleAlignment.bottom,
      // contentPadding: EdgeInsets.all(20),
      title: Text("Lucky Singh Parihar"),
      subtitle: Text("Junior Flutter Developer"),
      trailing: Icon(Icons.delete_outline),
      onTap: () {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("List Tile Clicked")));
      },
    ),
  );
}
