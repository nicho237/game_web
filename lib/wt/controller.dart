import 'package:get/get.dart';
import 'package:flutter/material.dart';

class FormController extends GetxController {
  final formName = 'Nama Panggilan'.obs;
  final formDiscord = 'Discord'.obs;
  final formNegara = 'Negara Utama'.obs;
  final formNick = 'WT nickname'.obs;
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _nickname = TextEditingController();
  final TextEditingController _negara = TextEditingController();
  final TextEditingController _user = TextEditingController();
}
