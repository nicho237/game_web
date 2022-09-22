import 'package:flutter/material.dart';
import 'package:game_web/landingpage.dart';

class WowsCardRule extends StatefulWidget {
  const WowsCardRule({super.key});

  @override
  State<WowsCardRule> createState() => _WowsCardRuleState();
}

class _WowsCardRuleState extends State<WowsCardRule> {
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
              '[ODIN]',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("assets/images/LOGO_ODIN_PNG.png"),
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
