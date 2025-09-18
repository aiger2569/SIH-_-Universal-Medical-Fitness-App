import 'package:flutter/material.dart';

class NutrutionScreen extends StatefulWidget {
  const NutrutionScreen({super.key});

  @override
  State<NutrutionScreen> createState() => _NutrutionScreenState();
}

class _NutrutionScreenState extends State<NutrutionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("nutrition screen")));
  }
}
