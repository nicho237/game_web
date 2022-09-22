import 'package:flutter/material.dart';
import 'package:game_web/landingpage.dart';

class WarCardRule extends StatefulWidget {
  const WarCardRule({super.key});

  @override
  State<WarCardRule> createState() => _WarCardRuleState();
}

class _WarCardRuleState extends State<WarCardRule> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 150,
      width: 300,
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
            radius: 30,
            backgroundImage: AssetImage("assets/images/Logo_tKRI.png"),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(100, 25),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {
               Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const LandingPage()));
              },
              child: const Text('Back')),
        ],
      ),
    );
  }
}
