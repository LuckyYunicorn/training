import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CustomStreamBuilder extends StatefulWidget {
  const CustomStreamBuilder({super.key});

  @override
  State<CustomStreamBuilder> createState() => _CustomStreamBuilderState();
}

class _CustomStreamBuilderState extends State<CustomStreamBuilder> {
  late StreamController<List<Map<String, dynamic>>> _streamController;

  @override
  void initState() {
    super.initState();
    _streamController = StreamController<List<Map<String, dynamic>>>();
    fetchDataPeriodically();
  }

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }

  // ✅ Function to call API and return parsed JSON
  Future<List<Map<String, dynamic>>> fetchData() async {
    final url = Uri.parse("https://jsonplaceholder.typicode.com/todos");

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      return List<Map<String, dynamic>>.from(jsonData);
    } else {
      throw Exception("Failed to load data");
    }
  }

  // Function to periodically call API and add to stream
  void fetchDataPeriodically() async {
    try {
      while (true) {
        final data = await fetchData();
        _streamController.sink.add(data);
        await Future.delayed(
          const Duration(seconds: 10),
        ); // refresh every 10 sec
      }
    } catch (e) {
      _streamController.sink.addError(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("API StreamBuilder Example")),
      body: StreamBuilder<List<Map<String, dynamic>>>(
        stream: _streamController.stream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text("No Data Available"));
          }

          final todos = snapshot.data!;
          return ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              final todo = todos[index];
              return ListTile(
                leading: Icon(
                  todo["completed"]
                      ? Icons.check_circle
                      : Icons.pending_actions,
                ),
                title: Text(todo["title"]),
                subtitle: Text("ID: ${todo["id"]}"),
              );
            },
          );
        },
      ),
    );
  }
}
