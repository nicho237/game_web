import 'package:flutter/material.dart';
import 'package:game_web/landingpage.dart';
import 'package:game_web/wows/wowscardrule.dart';


class WowsForm extends StatefulWidget {
  const WowsForm({super.key});

  @override
  State<WowsForm> createState() => _WowsFormState();
}

class _WowsFormState extends State<WowsForm> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const LandingPage()));
            },
            child: const Icon(Icons.home),
          ),
          body: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(255, 29, 111, 136),
                    Color.fromARGB(255, 4, 74, 95),
                  ],
                ),
              ),
            ),
          ),
        ),
        Center(
          child: SingleChildScrollView(
            child: Container(
              width: 700,
              height: 500,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 6, 80, 139),
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 4, 31, 107)
                        .withOpacity(0.6), //color of shadow
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Hero(
                          tag: 'drop',
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              color: Colors.transparent,
                              child: WowsCardRule()),
                        ),
                        Expanded(
                            child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          color: Colors.transparent,
                          child: Container(
                              width: 300,
                              child:
                                  Center(child: Text('Rules [On Progress]'))),
                        ))
                      ],
                    ),
                    Expanded(
                        child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: Colors.transparent,
                      child: Container(
                          width: 300,
                          child: Center(child: Text('Form [On Progress]'))),
                    ))
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
