import 'package:flutter/material.dart';

class CustomPageView extends StatefulWidget {
  const CustomPageView({super.key});

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  // 🔹 Create a PageController
  PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose(); // Dispose controller to avoid memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page View with Controller")),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              pageSnapping: false,
              controller: _pageController, // 🔹Use the controller here  3
              physics: BouncingScrollPhysics(),
              onPageChanged: (value) {
                setState(() {
                  currentPage = value; // 🔹Track current page
                });
                print("Current Page: $value");
              },
              children: [
                Container(
                  color: Colors.red,
                  child: Center(child: Text("Page 1")),
                ),
                Container(
                  color: Colors.green,
                  child: Center(child: Text("Page 2")),
                ),
                Container(
                  color: Colors.blue,
                  child: Center(child: Text("Page 3")),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          // 🔹 Buttons to jump to a page
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  _pageController.jumpToPage(0);
                },
                child: Text("Page 1"),
              ),
              ElevatedButton(
                onPressed: () {
                  _pageController.animateToPage(
                    1,
                    duration: Duration(milliseconds: 1500),
                    curve: Curves.easeInOut,
                  );
                },
                child: Text("Page 2"),
              ),
              ElevatedButton(
                onPressed: () {
                  _pageController.animateToPage(
                    2,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
                child: Text("Page 3"),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text("Currently on Page: ${currentPage + 1}"),
        ],
      ),
    );
  }
}
