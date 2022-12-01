import 'package:flutter/material.dart';

import '../widgets/demo_content_body.dart';
import '../widgets/demo_header.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5038BC),
      body: Column(
        children: const [
          DemoHeader(),
          DemoContentBody(),
        ],
      ),
    );
  }
}