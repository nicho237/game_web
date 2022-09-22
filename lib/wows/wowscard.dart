import 'package:flutter/material.dart';

class WowsCard extends StatefulWidget {
  const WowsCard({super.key});

  @override
  State<WowsCard> createState() => _WowsCardState();
}

class _WowsCardState extends State<WowsCard> {
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
              '[ODIN]',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage("assets/images/LOGO_ODIN_PNG.png"),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/WoWSJoin',
                );
              },
              child: const Text('World Of Warships')),
        ],
      ),
    );
  }
}
