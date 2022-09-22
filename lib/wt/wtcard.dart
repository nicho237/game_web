import 'package:flutter/material.dart';

class WarCard extends StatefulWidget {
  const WarCard({super.key});

  @override
  State<WarCard> createState() => _WarCardState();
}

class _WarCardState extends State<WarCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 300,
      width: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Material(
            color: Colors.transparent,
            child: Text(
              '[TKRI]',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage("assets/images/Logo_tKRI.png"),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/WarThunderJoin',
                );
              },
              child: const Text('War Thunder')),
        ],
      ),
    );
  }
}
