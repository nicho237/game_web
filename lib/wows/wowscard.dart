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
                showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    actionsPadding: const 
                    EdgeInsets.all(15),
                    title: const Text("Tidak ada Rekrutmen"),
                    content: const Text("ODIN sedang tidak membuka rekrutmen"),
                    actions: [
                      TextButton(
                          onPressed: (() {
                            Navigator.of(context, rootNavigator: true).pop();
                          }),
                          child: const Text("Kembali"))
                    ],
                  ),
                );

                
                
              },
              child: const Text('World Of Warships')),
        ],
      ),
    );
  }
}
