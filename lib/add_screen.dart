import 'package:flutter/material.dart';

class Addscreen extends StatefulWidget {
  const Addscreen({super.key});

  @override
  State<Addscreen> createState() => _AddscreenState();
}

class _AddscreenState extends State<Addscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const CircleAvatar(
              radius: 70,
            ),
            const SizedBox(
              height: 30,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     TextButton.icon(
            //         onPressed: () {},
            //         icon: const Icon(Icons.camera),
            //         label: const Text("Camera")),
            //     TextButton.icon(
            //         onPressed: () {},
            //         icon: const Icon(Icons.camera),
            //         label: const Text("Gallery")),
            //   ],
            // ),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Name", border: OutlineInputBorder()),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Class", border: OutlineInputBorder()),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Roll num", border: OutlineInputBorder()),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Add"))
          ],
        ),
      ),
    );
  }
}
