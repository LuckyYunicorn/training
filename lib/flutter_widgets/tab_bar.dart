// import 'package:flutter/material.dart';
//
// class CustomTabBar extends StatefulWidget {
//   const CustomTabBar({super.key});
//
//   @override
//   State<CustomTabBar> createState() => _CustomTabBarState();
// }
//
// class _CustomTabBarState extends State<CustomTabBar> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 4,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("TabBar"),
//           bottom: TabBar(
//             dividerHeight: 0,
//             tabs: [
//               Tab(text: "Home",),
//
//               Tab(icon: Icon(Icons.home_outlined)),
//               Tab(icon: Icon(Icons.home_outlined)),
//               Tab(icon: Icon(Icons.home_outlined)),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: [
//
//             Container(height: 200, color: Colors.red),
//             Container(height: 200, color: Colors.blue),
//             Container(height: 200, color: Colors.red),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:training/flutter_widgets/navigation_bar.dart';
import 'package:training/flutter_widgets/page_view.dart';
import 'package:training/flutter_widgets/refresh_indicator.dart';
import 'package:training/flutter_widgets/row_column.dart';
import 'package:training/flutter_widgets/text_field.dart';
import 'package:training/flutter_widgets/toast.dart';
import 'package:training/flutter_widgets/visibility.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      // animationDuration: Duration(seconds: 2),
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: SafeArea(
            child: TabBar(
              // controller: tabBarController,
              // overlayColor: Colors.red,
              // padding: EdgeInsets.all(0),
              unselectedLabelColor: Colors.grey,
              splashBorderRadius: BorderRadius.all(Radius.zero),
              onTap: (value) {
                // ScaffoldMessenger.of(
                //   context,
                // ).showSnackBar(SnackBar(content: Text(value.toString())));
              },

              physics: BouncingScrollPhysics(),
              isScrollable: true,
              // indicatorSize: TabBarIndicatorSize.label,
              tabAlignment: TabAlignment.start,
              // dividerHeight: 0,
              // overlayColor: WidgetStateProperty<Colors.red>,
              dividerColor: Colors.green,
              // indicatorColor: Colors.transparent,
              // indicatorSize: TabBarIndicatorSize.tab,
              // indicatorWeight: 10,
              indicatorAnimation: TabIndicatorAnimation.linear,
              tabs: [
                Tab(text: "Toast"),
                Tab(text: "NavigationBar"),
                Tab(text: "PageView"),
                Tab(text: "Visibility"),
                Tab(text: "RefreshIndicator"),
              ],
            ),
          ),
        ),
        body: TabBarView(

          children: [
            CustomToast(),
            CustomNavBar(),
            CustomPageView(),
            PullToRefreshExample(),
          ],
        ),
      ),
    );
  }
}
