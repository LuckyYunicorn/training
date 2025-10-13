import 'package:flutter/material.dart';

class PullToRefreshExample extends StatefulWidget {
  const PullToRefreshExample({super.key});

  @override
  State<PullToRefreshExample> createState() => _PullToRefreshExampleState();
}

class _PullToRefreshExampleState extends State<PullToRefreshExample> {
  List<String> items = [
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
  ];

  // This function runs when you pull down
  Future<void> _refreshData() async {
    await Future.delayed(const Duration(seconds: 1)); // simulate API call

    setState(() {
      items.add("New Item ${items.length + 1}");
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("SnackBar"),
        backgroundColor: Colors.blue,
        behavior: SnackBarBehavior.floating,
        showCloseIcon: true,
        closeIconColor: Colors.red,
        // clipBehavior: Clip.antiAlias,
        // shape: RoundedRectangleBorder(side: BorderSide(width: 10))
        elevation: 10,
        // actionOverflowThreshold: 0.5,
        // margin: EdgeInsets.all(20),
        // padding: EdgeInsets.all(20),
        // width: 20,
        animation: ProxyAnimation(),
        onVisible: () {
          print("object");
        },

        // duration: Duration(seconds: 10),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pull Down to Refresh")),
      body: RefreshIndicator(
        color: Colors.red,
        backgroundColor: Colors.blue,

        // strokeWidth: 10,
        // displacement: 150,
        // edgeOffset: 15, //indicator ko pull karne ki range
        // elevation: 20,
        // triggerMode: RefreshIndicatorTriggerMode.onEdge,
        // notificationPredicate:,
        onRefresh: _refreshData,
        child: ListView.builder(
          physics: const AlwaysScrollableScrollPhysics(), // Important
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(title: Text(items[index]));
          },
        ),
      ),
    );
  }
}

//
// import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
//
// class RefreshIndicatorApiExample extends StatefulWidget {
//   const RefreshIndicatorApiExample({super.key});
//
//   @override
//   State<RefreshIndicatorApiExample> createState() => _RefreshIndicatorApiExampleState();
// }
//
// class _RefreshIndicatorApiExampleState extends State<RefreshIndicatorApiExample> {
//   List posts = [];
//   bool isLoading = false;
//
//   @override
//   void initState() {
//     super.initState();
//     fetchPosts(); // Load posts initially
//   }
//
//   // Fetch posts from API
//   Future<void> fetchPosts() async {
//     setState(() {
//       isLoading = true;
//     });
//
//     final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
//
//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);
//       setState(() {
//         posts = data;
//       });
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Failed to load posts (${response.statusCode})')),
//       );
//     }
//
//     setState(() {
//       isLoading = false;
//     });
//   }
//
//   // Refresh when pulled down
//   Future<void> _refreshData() async {
//     await fetchPosts(); // Simply call the API again
//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(content: Text("Posts refreshed!")),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Pull to Refresh (API Example)')),
//       body: isLoading
//           ? const Center(child: CircularProgressIndicator())
//           : RefreshIndicator(
//         color: Colors.white,
//         backgroundColor: Colors.blue,
//         onRefresh: _refreshData,
//         child: ListView.builder(
//           physics: const AlwaysScrollableScrollPhysics(),
//           itemCount: posts.length,
//           itemBuilder: (context, index) {
//             final post = posts[index];
//             return ListTile(
//               title: Text(
//                 post['title'],
//                 style: const TextStyle(fontWeight: FontWeight.bold),
//               ),
//               subtitle: Text(post['body']),
//               leading: CircleAvatar(
//                 backgroundColor: Colors.blueAccent,
//                 child: Text('${post['id']}'),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
