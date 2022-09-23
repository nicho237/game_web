import 'package:flutter/material.dart';
import 'package:game_web/landingpage.dart';
import 'package:game_web/wt/costum.dart';
import 'package:game_web/wt/wtcardrule.dart';

class WarForm extends StatefulWidget {
  const WarForm({super.key});

  @override
  State<WarForm> createState() => _WarFormState();
}

class _WarFormState extends State<WarForm> {
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
              width: 800,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(children: [
                        Expanded(
                          child: Hero(
                            tag: 'dash',
                            child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                color: Colors.transparent,
                                child: WarCardRule()),
                          ),
                        ),
                        Expanded(
                            flex: 2,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              color: Colors.transparent,
                              child: Container(
                                  
                                  child: Center(
                                      child: Text('Rules [On Progress]'))),
                            )),
                      ]),
                    ),
                    Expanded(
                        flex: 1,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          color: Colors.transparent,
                          child: SizedBox(
                               child: Center(child: FormWidget())),
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

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
      child: Container(
        width: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Text(
                'Formulir Pendaftaran',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              textCapitalization: TextCapitalization.words,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
               label: Text('Nama Panggilan'),
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              style: const TextStyle(fontSize: 12, color: Colors.white),
              textAlignVertical: TextAlignVertical.bottom,
              
            ),
            TextField(
              
              decoration: InputDecoration(
                label: Text('WT nickname'),
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                 
                ),
              ),
              style: const TextStyle(fontSize: 12, color: Colors.white),
              textAlignVertical: TextAlignVertical.bottom,
            ),
            TextField(
              textCapitalization: TextCapitalization.words,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
               label: Text('Negara Utama'),
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              style: const TextStyle(fontSize: 12,  color: Colors.white),
              textAlignVertical: TextAlignVertical.bottom,
            ),
             TextField(
              textCapitalization: TextCapitalization.words,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
               label: Text('Discord'),
               hintText: 'Nicama#9958' ,
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              style: const TextStyle(fontSize: 12, color: Colors.white),
              textAlignVertical: TextAlignVertical.bottom,
            ),

            SizedBox(height: 40,),
            CheckEula(),
            CheckRules(),

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                
                },
                child: const Text('Kirim')),
          ],
        ),
      ),
    );
  }
}
