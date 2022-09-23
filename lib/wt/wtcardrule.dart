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
      width: 400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const CircleAvatar(
            radius: 65,
            backgroundImage: AssetImage("assets/images/Logo_tKRI.png"),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Material(
                color: Colors.transparent,
                child: Text(
                  '[TKRI]',
                  style: TextStyle(fontSize: 30,
                    color: Colors.white),
                ),
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
        ],
      ),
    );
  }
}
