import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardSreenState();
}

class _DashboardSreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bluebook Checker'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
