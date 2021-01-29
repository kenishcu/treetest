import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:treestest/model/medical_history.dart';

import '../constants.dart';

class MedicalHistoryApiProvider {

  final _baseUrl = API_URL + "/medical-history";

  Future<MetaDataMedicalHistoryParentResult> getMedicalHistory() async {
    String data  =  await rootBundle.loadString("lib/data/data1.json");
    return MetaDataMedicalHistoryParentResult.fromJson(json.decode(data));
  }
}