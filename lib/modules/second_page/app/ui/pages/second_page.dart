import 'package:flutter/material.dart';
import 'package:go_router_test_bug/core/router/navigation_helpers.dart';
import 'package:go_router_test_bug/widgets/button.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text("Second Page"),
            Button(
              onPressed: () => context.navigator.pop(),
              title: "Pop",
            ),
            Button(
              onPressed: () => context.navigator.pushReplacementFirstPage(),
              title: "Push replacement to first page",
            ),
            Button(
              onPressed: () => context.navigator.pushThirdPage(),
              title: "Push to third page",
            ),
          ],
        ),
      ),
    );
  }
}
