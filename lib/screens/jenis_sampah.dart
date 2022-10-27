import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class JenisSampahScreen extends StatefulWidget {
  const JenisSampahScreen({super.key});

  @override
  State<JenisSampahScreen> createState() => _JenisSampahScreenState();
}

class _JenisSampahScreenState extends State<JenisSampahScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.greenAccent,
        title: Text('Jenis-Jenis Sampah'),
        centerTitle: true,
      ),
    );
  }
}
