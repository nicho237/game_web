import 'package:flutter/material.dart';
import 'package:game_web/landingpage.dart';
import 'package:game_web/wt/costum.dart';
import 'package:game_web/wt/wtcardrule.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
                                child: const WarCardRule()),
                          ),
                        ),
                        Expanded(
                            flex: 2,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              color: Colors.transparent,
                              child: const Center(
                                  child: Text('Rules [On Progress]')),
                            )),
                      ]),
                    ),
                    Expanded(
                        flex: 1,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          color: Colors.transparent,
                          child: const SizedBox(
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
  final CollectionReference _formulir =
      FirebaseFirestore.instance.collection('Formulir');
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _nickname = TextEditingController();
  final TextEditingController _negara = TextEditingController();
  final TextEditingController _user = TextEditingController();
  bool _isruleschecked = false;
  bool _issbchecked = false;
  bool _validate = false;

  String result = '';
  String clear = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: SizedBox(
        width: 260,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Center(
              child: Text(
                'Formulir Pendaftaran',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _namaController,
              onEditingComplete: () {
                _namaController.text;
              },
              textCapitalization: TextCapitalization.words,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                label: const Text('Nama Panggilan'),
                labelStyle: const TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              style: const TextStyle(fontSize: 12, color: Colors.white),
              textAlignVertical: TextAlignVertical.bottom,
            ),
            TextField(
              controller: _nickname,
              decoration: InputDecoration(
                label: const Text('WT nickname'),
                labelStyle: const TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              style: const TextStyle(fontSize: 12, color: Colors.white),
              textAlignVertical: TextAlignVertical.bottom,
            ),
            TextField(
              controller: _negara,
              textCapitalization: TextCapitalization.words,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                label: const Text('Negara Utama'),
                labelStyle: const TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              style: const TextStyle(fontSize: 12, color: Colors.white),
              textAlignVertical: TextAlignVertical.bottom,
            ),
            TextField(
              controller: _user,
              textCapitalization: TextCapitalization.words,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                label: const Text('Discord'),
                hintText: 'Nicama#9958',
                labelStyle: const TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              style: const TextStyle(fontSize: 12, color: Colors.white),
              textAlignVertical: TextAlignVertical.bottom,
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              constraints: const BoxConstraints(maxWidth: 334),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Checkbox(
                      value: _issbchecked,
                      onChanged: (bool? value) {
                        // This is where we update the state when the checkbox is tapped
                        setState(() {
                          _issbchecked = value!;
                        });
                      }),
                  const Expanded(
                      child: Text(
                    'Saya Siap Mengikuti Squadron Realistic Battle',
                    style: TextStyle(fontSize: 11),
                  )),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            Container(
              constraints: const BoxConstraints(maxWidth: 334),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Checkbox(
                    value: _isruleschecked,
                    onChanged: (value) {
                      setState(() {
                        _isruleschecked = value!;
                      });
                    },
                  ),
                  const Expanded(
                      child: Text(
                    'Saya Sudah Membaca Rules',
                    style: TextStyle(fontSize: 11),
                  )),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(260, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: _isruleschecked && _issbchecked
                    ? () {
                      //setState(() {
                        // _namaController.text.isEmpty ? _validate = true : _validate = false;
                        // _nickname.text.isEmpty ? _validate = true : _validate = false;
                        // _negara.text.isEmpty ? _validate = true : _validate = false;
                        // _namaController.text.isEmpty ? _validate = true : _validate = false;
                      //});
                        final nama = _namaController.text;
                        final nick = _nickname.text;
                        final negara = _negara.text;
                        final user = _user.text;

                        createUser(
                            nama: nama, nick: nick, negara: negara, user: user);
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            actionsPadding: const EdgeInsets.all(15),
                            title: const Text("Formulir Terkirim"),
                            content: const Text(
                                "Mohon Tunggu dikontak oleh Admin atau bisa cek Discord Server kami"),
                            actions: [
                              TextButton(
                                  onPressed: (() {
                                    _namaController.clear();
                                    _negara.clear();
                                    _nickname.clear();
                                    _user.clear();
                                    Navigator.of(context, rootNavigator: true)
                                        .pop();
                                  }),
                                  child: const Text("OK")),
                              TextButton(
                                  onPressed: (() {}),
                                  child: const Text("DISCORD"))
                            ],
                          ),
                        );
                        //if buttonenabled == true then pass a function otherwise pass "null"
                      }
                    : null,
                child: const Text('Kirim')),
          ],
        ),
      ),
    );
  }

  Future createUser({
    required String nama,
    required String nick,
    required String negara,
    required String user,
  }) async {
    final docUser = _formulir.doc();

    final json = {
      'Nama': nama,
      'nickname': nick,
      'Negara': negara,
      'Discord': user,
    };

    await docUser.set(json);
  }
}
