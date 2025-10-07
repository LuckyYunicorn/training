import 'package:flutter/material.dart';
import 'package:training/flutter_widgets/drawer.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int currentIndex = 0;
  List<Widget> screens = [
    Center(child: Text("Home")),
    Center(child: Text("Search")),
    Center(child: Text("Favorite")),
    Center(child: Text("Settings")),
  ];
  FocusNode _focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: CustomDrawer(),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: FloatingActionButton(

        splashColor: Colors.green,
        backgroundColor: Colors.blueAccent,
        elevation: 10,
        focusElevation: 30,
        tooltip: "Add new Data",
        shape: CircleBorder(side: BorderSide(width: 3, color: Colors.red)),
        // enableFeedback: true,
        autofocus: true,
        // focusNode: _focusNode,
        heroTag: "fab1",
        onPressed: () {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text("data")));
        },

        child: Icon(Icons.add),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class CustomBottomNavBar extends StatefulWidget {
//   const CustomBottomNavBar({super.key});
//
//   @override
//   State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
// }
//
// class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
//   int currentIndex = 0;
//
//   List<Widget> screens = [
//     SingleChildScrollView(
//       child: Column(
//         children: List.generate(
//           30,
//               (index) => Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text("Home Item ${index + 1}"),
//           ),
//         ),
//       ),
//     ),
//     const Center(child: Text("Search")),
//     const Center(child: Text("Favorite")),
//     const Center(child: Text("Settings")),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(child: screens[currentIndex]),
//           Container(
//             height: 80,
//             padding: const EdgeInsets.all(8),
//             decoration: const BoxDecoration(
//               color: Colors.blue,
//               borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 buildNavItem(Icons.home_outlined, "Home", 0),
//                 buildNavItem(Icons.search_outlined, "Search", 1),
//                 buildNavItem(Icons.favorite_outline, "Favorite", 2),
//                 buildNavItem(Icons.person_outline, "Profile", 3),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget buildNavItem(IconData icon, String label, int index) {
//     bool isSelected = currentIndex == index;
//
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           currentIndex = index;
//         });
//       },
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Icon(
//             icon,
//             size: isSelected ? 28 : 22,
//             color: isSelected ? Colors.white : Colors.white70,
//           ),
//           if (isSelected)
//             Text(label, style: const TextStyle(color: Colors.white, fontSize: 12))
//         ],
//       ),
//     );
//   }
// }
