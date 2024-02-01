import 'package:flutter/material.dart';
import 'package:flutter_application_todo/add_screen.dart';
import 'package:flutter_application_todo/detail_screen.dart';
import 'package:flutter_application_todo/edit_screen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo App"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Deatilscreen()));
              },
              child: Card(
                // color: Colors.grey[300],
                child: ListTile(
                  leading: const CircleAvatar(
                    radius: 20,
                  ),
                  trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Editscreen()));
                        },
                        icon: const Icon(Icons.edit)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        )),
                  ]),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Addscreen()));
          },
          label: const Text("Add")),
    );
  }
}
