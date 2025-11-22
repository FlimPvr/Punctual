import 'package:flutter/material.dart';
import 'package:v1app/models/credit.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color.fromARGB(255, 250, 250, 250)),
            margin: EdgeInsets.symmetric(horizontal: 2, vertical: 5),
            padding: EdgeInsets.all(40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data[index].name.title,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                        "Project duration : \n${data[index].floor}",
                        style: TextStyle(fontSize: 20),),
                  ],
                ),
                Image.asset(
                  data[index].name.image,
                  width: 70,
                  height: 70,
                )
              ],
            ),
          );
        });
  }
}
