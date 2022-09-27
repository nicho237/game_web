import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../landingpage.dart';

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

class WarCardRule extends StatefulWidget {
  const WarCardRule({super.key});

  @override
  State<WarCardRule> createState() => _WarCardRuleState();
}

class _WarCardRuleState extends State<WarCardRule> {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
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
                     Get.to(const LandingPage());
                    },
                    child: const Text('Back')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class RulesList extends StatefulWidget {
  const RulesList({super.key});

  @override
  State<RulesList> createState() => _RulesListState();
}

class _RulesListState extends State<RulesList> {
  final CollectionReference _rules =
      FirebaseFirestore.instance.collection('Rules');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: StreamBuilder(
        stream: _rules.snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
          if (streamSnapshot.hasData) {
            return ListView.builder(
                itemCount: streamSnapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  final DocumentSnapshot documentSnapshot =
                      streamSnapshot.data!.docs[index];

                  return Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Colors.transparent,
                      margin: const EdgeInsets.only(top: 6),
                      child: ListTile(
                        title: Text(
                          documentSnapshot['rules'],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 12),
                        ),
                      ));
                });
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

