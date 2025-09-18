import 'package:flutter/material.dart';

class MeditationScree extends StatefulWidget {
  const MeditationScree({super.key});

  @override
  State<MeditationScree> createState() => _MeditationScreeState();
}

class _MeditationScreeState extends State<MeditationScree>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("meditation screen")));
  }
}
