import 'package:flutter/material.dart';
import 'package:go_router_test_bug/core/router/navigation_helpers.dart';
import 'package:go_router_test_bug/widgets/button.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text("Third Page"),
            Button(
              onPressed: () => context.navigator.pop(),
              title: "Pop",
            ),
            Button(
              onPressed: () => context.navigator.pushFirstPage(),
              title: "Push to first page",
            ),
            Button(
              onPressed: () => context.navigator.pushReplacementSecondPage(),
              title: "Push replacement to second page",
            ),
          ],
        ),
      ),
    );
  }
}
