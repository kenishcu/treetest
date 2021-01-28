import 'dart:convert';
import 'dart:io';
import 'package:treestest/model/medical_history.dart';

import '../constants.dart';

class MedicalHistoryApiProvider {

  final _baseUrl = API_URL + "/medical-history";

  Future<MetaDataMedicalHistoryParentResult> getMedicalHistory(String accessToken, int patientId, int from, int to) async {
    print(_baseUrl + "?patient_id=" + patientId.toString() +"&from=" + from.toString() + "&to="+ to.toString() + "&n=100&p=1");
    return null;
//    final response = await http.get(_baseUrl + "?patient_id=" + patientId.toString() +"&from=" + from.toString() + "&to="+ to.toString() + "&n=100&p=1",
//      headers: { HttpHeaders.authorizationHeader: "Bearer $accessToken"},
//    );
//    print(_baseUrl + "?patient_id=" + patientId.toString() +"&from=" + from.toString() + "&to="+ to.toString() + "&n=100&p=1");
//    if ( response.statusCode ==  200) {
//      return MetaDataMedicalHistoryParentResult.fromJson(json.decode(response.body));
//    } else {
//      throw Exception('Failed to medical-history');
//    }
  }
}