import 'package:flutter/material.dart';

class filterView extends StatelessWidget {
  const filterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
        ),
        body: Column(
          children: [const
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Looking for',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(30),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.house_outlined,
                          size: 115,
                        ),
                        Text(
                          "For Sale",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(30),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.key_sharp,
                          size: 115,
                        ),
                        Text(
                          "For Rent",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              "Property Type",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Wrap(
              spacing: 40,
              runSpacing: 4.0,
              children: const [
                Chip(
                  label: Text('House'),
                ),
                Chip(
                  label: Text('Apartment'),
                ),
                Chip(
                  label: Text('Villa'),
                ),
                Chip(
                  label: Text('Penthouse'),
                ),
                Chip(label: Text("Commercial")),
                Chip(label: Text("Flat")),
                Chip(label: Text("shops")),
                Chip(label: Text("Lands")),
              ],
            ),
          ],
        ));
  }
}
