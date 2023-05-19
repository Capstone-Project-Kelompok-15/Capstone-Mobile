import 'package:flutter/material.dart';

class CreateThreadScreen extends StatelessWidget {
  static const routename = "/createThread";

  const CreateThreadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ElevatedButton(
            onPressed: () {},
            child: Row(
              children: const [Text("Kirim"), Icon(Icons.arrow_circle_right)],
            ),
          ),
        ],
      ),
    );
  }
}
