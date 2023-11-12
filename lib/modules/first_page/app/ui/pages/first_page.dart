import 'package:flutter/material.dart';
import 'package:go_router_test_bug/core/router/navigation_helpers.dart';
import 'package:go_router_test_bug/widgets/button.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text("First Page"),
            Button(
              onPressed: () => context.navigator.pop(),
              title: "Pop",
            ),
            Button(
              onPressed: () => context.navigator.pushSecondPage(),
              title: "Push to second page",
            ),
            Button(
              onPressed: () => context.navigator.pushReplacementThirdPage(),
              title: "Push replacement to third page",
            ),
          ],
        ),
      ),
    );
  }
}
