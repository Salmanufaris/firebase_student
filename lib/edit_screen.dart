import 'package:flutter/material.dart';

class Editscreen extends StatefulWidget {
  const Editscreen({super.key});

  @override
  State<Editscreen> createState() => _EditscreenState();
}

class _EditscreenState extends State<Editscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const CircleAvatar(
              radius: 70,
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
                decoration: const InputDecoration(
                    hintText: "Name", border: OutlineInputBorder())),
            TextFormField(
                decoration: const InputDecoration(
                    hintText: "Class", border: OutlineInputBorder())),
            TextFormField(
                decoration: const InputDecoration(
                    hintText: "Roll num", border: OutlineInputBorder())),
            const SizedBox(
              height: 10,
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
            TextButton(onPressed: () {}, child: const Text("Save"))
          ],
        ),
      ),
    );
  }
}
