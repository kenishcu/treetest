 // data app
import 'dart:convert';

class MetaDataMedicalHistoryParentResult {
  String _appVersion;
  dynamic _errors;
  List<MetaDataMedicalHistoryParent> _results;

  String get appVersion => _appVersion;

  set appVersion(String value) {
    _appVersion = value;
  }

  MetaDataMedicalHistoryParentResult(this._appVersion, this._errors, this._results);

  factory MetaDataMedicalHistoryParentResult.fromJson(dynamic json) {
    final appVersion = json['app_version'];
    final errors = json['errors'];
    List<MetaDataMedicalHistoryParent> temp = [];
    for (int i = 0; i < json['results'].length; i++) {
      MetaDataMedicalHistoryParent result = MetaDataMedicalHistoryParent.fromJson(
          json['results'][i]);
      temp.add(result);
    }
    return MetaDataMedicalHistoryParentResult(appVersion, errors, temp);
  }

  dynamic get errors => _errors;

  List<MetaDataMedicalHistoryParent> get results => _results;

  set results(List<MetaDataMedicalHistoryParent> value) {
    _results = value;
  }

  set errors(dynamic value) {
    _errors = value;
  }
}


// tree 1
class MetaDataMedicalHistoryParent {

  InpatientParent _id;

  InpatientParent get id => _id;

  set id(InpatientParent value) {
    _id = value;
  }

  List<MetaDataMedicalHistory> _datas;

  List<MetaDataMedicalHistory> get datas => _datas;

  set datas(List<MetaDataMedicalHistory> value) {
    _datas = value;
  }

  MetaDataMedicalHistoryParent(this._id, this._datas);

  factory MetaDataMedicalHistoryParent.fromJson(dynamic json) {
    List<MetaDataMedicalHistory> temp = [];
    for (int i = 0; i < json['datas'].length; i++) {
      MetaDataMedicalHistory result = MetaDataMedicalHistory.fromJson(
          json['datas'][i]);
      temp.add(result);
    }
    return MetaDataMedicalHistoryParent(InpatientParent.fromJson(json["_id"]), temp);
  }
}


// tree 2
class MetaDataMedicalHistory {

  InPatientChild _id;

  InPatientChild get id => _id;

  set id(InPatientChild value) {
    _id = value;
  }

  List<DataMedicalHospital> _listData;

  MetaDataMedicalHistory(this._id, this._listData);

  factory MetaDataMedicalHistory.fromJson(dynamic json) {
    List<DataMedicalHospital> temp = [];
    for (int i = 0; i < json['datas'].length; i++) {
      DataMedicalHospital result = DataMedicalHospital.fromJson(
          json['datas'][i]);
      temp.add(result);
    }
    return MetaDataMedicalHistory(InPatientChild.fromJson(json['_id']), temp);
  }

  List<DataMedicalHospital> get listData => _listData;

  set listData(List<DataMedicalHospital> value) {
    _listData = value;
  }
}

class InpatientParent {
  int _inPatient;

  int get inPatient => _inPatient;

  set inPatient(int value) {
    _inPatient = value;
  }

  InpatientParent(this._inPatient);

  factory InpatientParent.fromJson(dynamic json) {
    return InpatientParent(json['in_patient']);
  }
}

class InPatientChild {
  int _inPatient;

  int get inPatient => _inPatient;

  set inPatient(int value) {
    _inPatient = value;
  }

  String _receptionQueueId;
  InPatientChild(this._inPatient, this._receptionQueueId);

  factory InPatientChild.fromJson(dynamic json) {
    return InPatientChild(json['in_patient'] as int, json['reception_queue_id'] as String);
  }

  String get receptionQueueId => _receptionQueueId;

  set receptionQueueId(String value) {
    _receptionQueueId = value;
  }
}

class InPatientChild3 {
  int _inPatient;

  int get inPatient => _inPatient;

  set inPatient(int value) {
    _inPatient = value;
  }

  String _receptionQueueId;

  int _currentDayTime;

  int get currentDayTime => _currentDayTime;

  set currentDayTime(int value) {
    _currentDayTime = value;
  }

  InPatientChild3(this._currentDayTime, this._inPatient, this._receptionQueueId);

  factory InPatientChild3.fromJson(dynamic json) {
    return InPatientChild3(json['current_day_time'] as int , json['in_patient'] as int, json['reception_queue_id'] as String);
  }

  String get receptionQueueId => _receptionQueueId;

  set receptionQueueId(String value) {
    _receptionQueueId = value;
  }
}

class InPatientChild4 {
  int _inPatient;

  int get inPatient => _inPatient;

  set inPatient(int value) {
    _inPatient = value;
  }

  String _receptionQueueId;

  int _currentDayTime;

  int get currentDayTime => _currentDayTime;

  set currentDayTime(int value) {
    _currentDayTime = value;
  }

  int _serviceCategoryParentId;

  int get serviceCategoryParentId => _serviceCategoryParentId;

  set serviceCategoryParentId(int value) {
    _serviceCategoryParentId = value;
  }

  String _serviceCategoryParentName;

  InPatientChild4(this._currentDayTime, this._inPatient, this._receptionQueueId, this._serviceCategoryParentId, this._serviceCategoryParentName);

  factory InPatientChild4.fromJson(dynamic json) {
    return InPatientChild4(json['current_day_time'] as int , json['in_patient'] as int, json['reception_queue_id'] as String,
        json['service_category_parent_id'], json['service_category_parent_name']);
  }

  String get receptionQueueId => _receptionQueueId;

  set receptionQueueId(String value) {
    _receptionQueueId = value;
  }

  String get serviceCategoryParentName => _serviceCategoryParentName;

  set serviceCategoryParentName(String value) {
    _serviceCategoryParentName = value;
  }
}

// tree 3
class DataMedicalHospital {

  InPatientChild3 _id;

  InPatientChild3 get id => _id;

  set id(InPatientChild3 value) {
    _id = value;
  }

  List<MedicalHistoryTree4> _datas;

  DataMedicalHospital(this._id, this._datas);

  factory DataMedicalHospital.fromJson(dynamic json) {
    List<MedicalHistoryTree4> datas = [];
    for (int i = 0; i < json['datas'].length; i++) {
      MedicalHistoryTree4 result = MedicalHistoryTree4.fromJson(json['datas'][i]);
      datas.add(result);
    }
    return DataMedicalHospital(InPatientChild3.fromJson(json['_id']), datas);
  }

  List<MedicalHistoryTree4> get datas => _datas;

  set datas(List<MedicalHistoryTree4> value) {
    _datas = value;
  }
}

// tree 4
class MedicalHistoryTree4 {

  InPatientChild4 _id;

  InPatientChild4 get id => _id;

  set id(InPatientChild4 value) {
    _id = value;
  }

  List<MedicalHistory> _datas;

  MedicalHistoryTree4(this._id, this._datas);

  factory MedicalHistoryTree4.fromJson(dynamic json) {
    List<MedicalHistory> datas = [];
    for (int i = 0; i < json['datas'].length; i++) {
      MedicalHistory result = MedicalHistory.fromJson(json['datas'][i]);
      datas.add(result);
    }
    return MedicalHistoryTree4(InPatientChild4.fromJson(json['_id']), datas);
  }

  List<MedicalHistory> get datas => _datas;

  set datas(List<MedicalHistory> value) {
    _datas = value;
  }
}

class MedicalHistory {

  ServiceMedical _id;

  ServiceMedical get id => _id;

  set id(ServiceMedical value) {
    _id = value;
  }

  List<MedicalHistoryResult> _medicalHistories;


  MedicalHistory(this._id, this._medicalHistories);

  factory MedicalHistory.fromJson(dynamic json) {
    List<MedicalHistoryResult> datas = [];
    if(json['datas'] !=null) {
      for (int i = 0; i < json['datas'].length; i++) {
        MedicalHistoryResult result = MedicalHistoryResult.fromJson(json['datas'][i]);
        datas.add(result);
      }
    }
    return MedicalHistory(ServiceMedical.fromJson(json["_id"]) , datas);
  }

  List<MedicalHistoryResult> get medicalHistories => _medicalHistories;

  set medicalHistories(List<MedicalHistoryResult> value) {
    _medicalHistories = value;
  }
}

class MedicalHistoryResult {

  int _serviceId;
  String _serviceCode;

  String get serviceCode => _serviceCode;

  set serviceCode(String value) {
    _serviceCode = value;
  }

  String _serviceName;
  List<Pharma>  _listPharmas;
  Treatment _treatment;

  MedicalHistoryResult(this._serviceId, this._serviceCode, this._serviceName, this._listPharmas, this._treatment);

  factory MedicalHistoryResult.fromJson(dynamic json) {
    Treatment treatment;
    if(json == null) {
      return null;
    }
    if(json["results"].runtimeType.toString() == "_InternalLinkedHashMap<String, dynamic>") {
      treatment = Treatment.fromJson(json["results"]);
    }
    List<Pharma> pharmas = [];
    if(json['pharmas'] != null && json['pharmas'].length > 0) {
      for (int i = 0; i < json['pharmas'].length; i++) {
        Pharma result = Pharma.fromJson(json['pharmas'][i]);
        pharmas.add(result);
      }
    }
    return MedicalHistoryResult(json['service_id'] as int, json['service_code'] as String, json['service_name'] as String, pharmas, treatment);
  }


  int get serviceId => _serviceId;

  set serviceId(int value) {
    _serviceId = value;
  }

  String get serviceName => _serviceName;

  set serviceName(String value) {
    _serviceName = value;
  }

  List<Pharma> get listPharmas => _listPharmas;

  set listPharmas(List<Pharma> value) {
    _listPharmas = value;
  }

  Treatment get treatment => _treatment;

  set treatment(Treatment value) {
    _treatment = value;
  }
}

class ServiceMedical {
  int _currentDayTime;

  int get currentDayTime => _currentDayTime;

  set currentDayTime(int value) {
    _currentDayTime = value;
  }

  int _inPatient;
  String _receptionQueueId;
  int _serviceCategoryId;
  String _serviceCategoryName;
  int _serviceCategoryParentId;
  String _serviceCategoryParentName;

  ServiceMedical(this._currentDayTime, this._inPatient, this._receptionQueueId, this._serviceCategoryId,
      this._serviceCategoryName, this._serviceCategoryParentId, this._serviceCategoryParentName);

  factory ServiceMedical.fromJson(dynamic json) {
    return ServiceMedical(json['current_day_time'], json['in_patient'],  json['reception_queue_id'], json['service_category_id'],
      json['service_category_name'], json['service_category_parent_id'], json['service_category_parent_name']);
  }

  int get inPatient => _inPatient;

  set inPatient(int value) {
    _inPatient = value;
  }

  String get receptionQueueId => _receptionQueueId;

  set receptionQueueId(String value) {
    _receptionQueueId = value;
  }

  int get serviceCategoryId => _serviceCategoryId;

  set serviceCategoryId(int value) {
    _serviceCategoryId = value;
  }

  String get serviceCategoryName => _serviceCategoryName;

  set serviceCategoryName(String value) {
    _serviceCategoryName = value;
  }

  int get serviceCategoryParentId => _serviceCategoryParentId;

  set serviceCategoryParentId(int value) {
    _serviceCategoryParentId = value;
  }

  String get serviceCategoryParentName => _serviceCategoryParentName;

  set serviceCategoryParentName(String value) {
    _serviceCategoryParentName = value;
  }
}

class MedicalHistoryPharmaResult {

    int _serviceId;
    String _serviceCode;
    String _serviceName;
    List<Pharma> _results;

    List<Pharma> get results => _results;

  set results(List<Pharma> value) {
    _results = value;
  }

    MedicalHistoryPharmaResult(this._results);

    factory MedicalHistoryPharmaResult.fromJson(dynamic json) {
      List<Pharma> swap = [];
      if( json != null &&  json.length > 0) {
        for (int i = 0; i < json.length; i++) {
          Pharma result = Pharma.fromJson(json[i]);
          swap.add(result);
        }
      }

      return MedicalHistoryPharmaResult(swap);
    }

    int get serviceId => _serviceId;

    set serviceId(int value) {
      _serviceId = value;
    }

    String get serviceCode => _serviceCode;

  set serviceCode(String value) {
    _serviceCode = value;
  }

    String get serviceName => _serviceName;

  set serviceName(String value) {
    _serviceName = value;
  }
}

class MedicalHistoryTreatmentResult {
  int _serviceId;

  int get serviceId => _serviceId;

  set serviceId(int value) {
    _serviceId = value;
  }

  String _serviceCode;
  String _serviceName;
  Treatment _results;

  MedicalHistoryTreatmentResult(this._serviceId, this._serviceCode, this._serviceName, this._results);

  factory MedicalHistoryTreatmentResult.fromJson(dynamic json) {
    Treatment treatment = Treatment.fromJson(json['results']);
    return MedicalHistoryTreatmentResult(json['service_id'], json['service_code'], json['service_name'], treatment);
  }

  String get serviceCode => _serviceCode;

  set serviceCode(String value) {
    _serviceCode = value;
  }

  String get serviceName => _serviceName;

  set serviceName(String value) {
    _serviceName = value;
  }

  Treatment get results => _results;

  set results(Treatment value) {
    _results = value;
  }
}

class Treatment{
  String _benhSu;
  num _canNang;
  String _chanDoan;
  String _chanDoanSoBo;
  num _chieuCao;
  int _huyetAp1;
  int _huyetAp2;
  KetQuaKSK _ketQuaKSK;
  String _lyDoVaoVien;
  int _mach;
  num _nhietDo;
  int _nhipTho;
  String _note;
  int _serviceCategoryId;
  String _serviceCategoryName;
  String _tienSuBenh;
  String _xetBoPhan;
  String _xetToanThan;

  Treatment(this._benhSu, this._canNang, this._chanDoan, this._chanDoanSoBo, this._chieuCao, this._huyetAp1, this._huyetAp2,
      this._ketQuaKSK, this._lyDoVaoVien, this._mach, this._nhietDo, this._nhipTho, this._note, this._serviceCategoryId, this._serviceCategoryName,
      this._tienSuBenh, this._xetBoPhan, this._xetToanThan);


  factory  Treatment.fromJson(dynamic json) {
    return Treatment(json['benh_su'] as String, json['can_nang'] as num, json['chan_doan'] as String, json['chan_doan_so_bo'] as String, json['chieu_cao'] as num,
        json['huyet_ap1'] as int, json['huyet_ap2'] as int, KetQuaKSK.fromJson(json['ket_qua_ksk']), json['ly_do_vao_vien'] as String,  json['mach'] as int,json['nhiet_do'] as num,
        json['nhip_tho'] as int, json['note'] as String, json['service_category_id'] as int, json['service_category_name'] as String,  json['tien_su_benh'] as String,
        json['xet_bo_phan'] as String,  json['xet_toan_than'] as String);
  }

  String get benhSu => _benhSu;

  set benhSu(String value) {
    _benhSu = value;
  }

  num get canNang => _canNang;

  set canNang(num value) {
    _canNang = value;
  }

  String get lyDoVaoVien => _lyDoVaoVien;

  set lyDoVaoVien(String value) {
    _lyDoVaoVien = value;
  }

  String get chanDoan => _chanDoan;

  set chanDoan(String value) {
    _chanDoan = value;
  }

  String get chanDoanSoBo => _chanDoanSoBo;

  set chanDoanSoBo(String value) {
    _chanDoanSoBo = value;
  }

  num get chieuCao => _chieuCao;

  set chieuCao(num value) {
    _chieuCao = value;
  }

  int get huyetAp1 => _huyetAp1;

  set huyetAp1(int value) {
    _huyetAp1 = value;
  }

  int get huyetAp2 => _huyetAp2;

  set huyetAp2(int value) {
    _huyetAp2 = value;
  }

  KetQuaKSK get ketQuaKSK => _ketQuaKSK;

  set ketQuaKSK(KetQuaKSK value) {
    _ketQuaKSK = value;
  }

  int get mach => _mach;

  set mach(int value) {
    _mach = value;
  }

  num get nhietDo => _nhietDo;

  set nhietDo(num value) {
    _nhietDo = value;
  }

  int get nhipTho => _nhipTho;

  set nhipTho(int value) {
    _nhipTho = value;
  }

  String get note => _note;

  set note(String value) {
    _note = value;
  }

  int get serviceCategoryId => _serviceCategoryId;

  set serviceCategoryId(int value) {
    _serviceCategoryId = value;
  }

  String get serviceCategoryName => _serviceCategoryName;

  set serviceCategoryName(String value) {
    _serviceCategoryName = value;
  }

  String get tienSuBenh => _tienSuBenh;

  set tienSuBenh(String value) {
    _tienSuBenh = value;
  }

  String get xetBoPhan => _xetBoPhan;

  set xetBoPhan(String value) {
    _xetBoPhan = value;
  }

  String get xetToanThan => _xetToanThan;

  set xetToanThan(String value) {
    _xetToanThan = value;
  }
}

class KetQuaKSK {
  String _ketQuaKhamCls;

  KetQuaKSK(this._ketQuaKhamCls);

  factory KetQuaKSK.fromJson(dynamic json1) {
    if(json1 != null) {
//      List<dynamic> map = new Map<String, dynamic>.from(json1);
//      print(map);
//      dynamic kq = json.decode(json1);
//     return KetQuaKSK(kq['ket_qua_kham_cls']);
      return null;
    } else {
      return null;
    }
  }

  String get ketQuaKhamCls => _ketQuaKhamCls;

  set ketQuaKhamCls(String value) {
    _ketQuaKhamCls = value;
  }
}

class Pharma {
  List<DetailPharma> _details;

  List<DetailPharma> get details => _details;

  set details(List<DetailPharma> value) {
    _details = value;
  }
  String _advice;

  String get advice => _advice;

  set advice(String value) {
    _advice = value;
  }

  String _examinationPrescriptionCode;
//  int _examinationPrescriptionPrice;
//  int _isDischarge;
//  int _isIssue;
//  String _operateNo;
//  List<PharmaRequestParentInArr>  _pharmaRequestParentInArrs;
//  int _pharmaCategoryId;
//  String _pharmaRequestParentIn;
//  String _pharmasNote;
//  String _pharmasNoteOther;
//  int _supplyId;
//  int _usedAt;
//  int _usedAtAction;
//  String _usedBy;
//  String _userFullName;
//  int _userId;
//  String _userPhoneNumber;
  String _userSignature;
  String _userSignatureImage;
//  int _warehouseId;
//  String _warehouseName;

  //  this._examinationPrescriptionPrice, this._isDischarge, this._isIssue, this._operateNo, this._pharmaRequestParentInArrs,
  //      this._pharmaCategoryId, this._pharmaRequestParentIn, this._pharmasNote, this._pharmasNoteOther, this._supplyId, this._usedAt,
  //  this._usedAtAction, this._usedBy, this._userFullName, this._userId, this._userPhoneNumber, this._warehouseId, this._warehouseName

  Pharma(this._details, this._advice, this._examinationPrescriptionCode, this._userSignature, this._userSignatureImage);

  factory Pharma.fromJson(dynamic json) {
    if(json == null) {
      return null;
    }
    List<DetailPharma> pharmaDetails = [];
    if( json['detail'] != null && json['detail'].length != null &&  json['detail'].length > 0) {
      for (int i = 0; i < json['detail'].length; i++) {
        DetailPharma result = DetailPharma.fromJson(json['detail'][i]);
        pharmaDetails.add(result);
      }
    }

    List<PharmaRequestParentInArr>  pharmaRequestParentInArrs = [];
    if( json != null && json['phama_request_parent_in_arr'] != null && json['phama_request_parent_in_arr'].length != null &&  json['phama_request_parent_in_arr'].length > 0) {
      for (int i = 0; i < json['phama_request_parent_in_arr'].length; i++) {
        PharmaRequestParentInArr r = PharmaRequestParentInArr.fromJson(json['phama_request_parent_in_arr'][i]);
        pharmaRequestParentInArrs.add(r);
      }
    }

    //  json['examination_prescription_price'] as int,  json['is_discharge'] as int,
    //        json['is_issue'] as int,  json['operate_no'] as String, pharmaRequestParentInArrs, json['pharma_category_id'] as int, json['pharma_request_parent_in'] as String,
    //      json['pharmas_note'] as String,  json['pharmas_note_other'] as String,  json['supply_id'] as int,  json['used_at'] as int,  json['used_at_action'] as int,
    //      json['used_by'] as String,  json['user_full_name'] as String, json['user_id'] as int,  json['user_phone_number'] as String,  json['warehouse_id'] as int,  json['warehouse_name'] as String

    return Pharma(pharmaDetails, json['advice'] as String, json['examination_prescription_code'] as String, json['user_signature'] as String,
      json['user_signature_image'] as String);
  }

  String get examinationPrescriptionCode => _examinationPrescriptionCode;

  set examinationPrescriptionCode(String value) {
    _examinationPrescriptionCode = value;
  }

//  int get examinationPrescriptionPrice => _examinationPrescriptionPrice;
//
//  set examinationPrescriptionPrice(int value) {
//    _examinationPrescriptionPrice = value;
//  }

//  int get isDischarge => _isDischarge;
//
//  set isDischarge(int value) {
//    _isDischarge = value;
//  }

//  int get isIssue => _isIssue;
//
//  set isIssue(int value) {
//    _isIssue = value;
//  }
//
//  String get operateNo => _operateNo;
//
//  set operateNo(String value) {
//    _operateNo = value;
//  }
//
//  List<PharmaRequestParentInArr> get pharmaRequestParentInArrs =>
//      _pharmaRequestParentInArrs;
//
//  set pharmaRequestParentInArrs(List<PharmaRequestParentInArr> value) {
//    _pharmaRequestParentInArrs = value;
//  }
//
//  int get pharmaCategoryId => _pharmaCategoryId;
//
//  set pharmaCategoryId(int value) {
//    _pharmaCategoryId = value;
//  }
//
//  String get pharmaRequestParentIn => _pharmaRequestParentIn;
//
//  set pharmaRequestParentIn(String value) {
//    _pharmaRequestParentIn = value;
//  }
//
//  String get pharmasNote => _pharmasNote;
//
//  set pharmasNote(String value) {
//    _pharmasNote = value;
//  }
//
//  String get pharmasNoteOther => _pharmasNoteOther;
//
//  set pharmasNoteOther(String value) {
//    _pharmasNoteOther = value;
//  }
//
//  int get supplyId => _supplyId;
//
//  set supplyId(int value) {
//    _supplyId = value;
//  }
//
//  int get usedAt => _usedAt;
//
//  set usedAt(int value) {
//    _usedAt = value;
//  }
//
//  int get usedAtAction => _usedAtAction;
//
//  set usedAtAction(int value) {
//    _usedAtAction = value;
//  }
//
//  String get usedBy => _usedBy;
//
//  set usedBy(String value) {
//    _usedBy = value;
//  }
//
//  String get userFullName => _userFullName;
//
//  set userFullName(String value) {
//    _userFullName = value;
//  }
//
//  int get userId => _userId;
//
//  set userId(int value) {
//    _userId = value;
//  }
//
//  String get userPhoneNumber => _userPhoneNumber;
//
//  set userPhoneNumber(String value) {
//    _userPhoneNumber = value;
//  }

  String get userSignature => _userSignature;

  set userSignature(String value) {
    _userSignature = value;
  }

  String get userSignatureImage => _userSignatureImage;

  set userSignatureImage(String value) {
    _userSignatureImage = value;
  }

//  int get warehouseId => _warehouseId;
//
//  set warehouseId(int value) {
//    _warehouseId = value;
//  }
//
//  String get warehouseName => _warehouseName;
//
//  set warehouseName(String value) {
//    _warehouseName = value;
//  }
}

class PharmaRequestParentInArr {
  String _pharmaRequestParentId;

  String _pharmaRequestParentIdTh;

  PharmaRequestParentInArr(this._pharmaRequestParentId, this._pharmaRequestParentIdTh);

  factory PharmaRequestParentInArr.fromJson(dynamic json) {
    return PharmaRequestParentInArr(json['pharma_request_parent_in'] as String, json['pharma_request_parent_in_th'] as String);
  }

  String get pharmaRequestParentId => _pharmaRequestParentId;

  set pharmaRequestParentId(String value) {
    _pharmaRequestParentId = value;
  }

  String get pharmaRequestParentIdTh => _pharmaRequestParentIdTh;

  set pharmaRequestParentIdTh(String value) {
    _pharmaRequestParentIdTh = value;
  }
}
class DetailPharma {
  Ingredient _ingredient;

  Ingredient get ingredient => _ingredient;

  set ingredient(Ingredient value) {
    _ingredient = value;
  }

  int _isSelf;
  int _isSynthetic;
  String _note;
  num _numberAfternoon;
  num _numberDay;
  num _numberMorning;
  num _numberNight;
  num _numberNoon;
  dynamic _pharmaCategoryId;
  String _pharmaDosage;
  String _pharmaDosageDetail;
  int _pharmaId;
//  List<PharmaIngredientDetail> _pharmaIngredientDetails;
  String _pharmaName;
//  List<PharmaWayToUse> _pharmaWayToUses;
  num _quantity;
  dynamic _supplyId;
  String _unitName;
  String _wayToUseName;
//  WayToUseSelected _wayToUseSelected;


  DetailPharma(this._ingredient,  this._note, this._numberAfternoon, this._numberDay, this._numberMorning, this._numberNight,
      this._numberNoon, this._pharmaCategoryId, this._pharmaDosage, this._pharmaDosageDetail, this._pharmaId, this._pharmaName, this._quantity, this._supplyId,
      this._wayToUseName, this._unitName);

  factory DetailPharma.fromJson(dynamic json) {
    return DetailPharma( Ingredient.fromJson(json['ingredient']), json['note'] as String, json['number_afternoon'] as num, json['number_day'] as num,
        json['number_morning'] as num, json['number_night'] as num, json['number_noon'] as num, json['pharma_category_id'] as dynamic,
    json['pharma_dosage'] as String,  json['pharma_dosage_detail'] as String, json['pharma_id'] as int,  json['pharma_name'] as String, json['quantity'] as num,
        json['supply_id'] as dynamic, json['way_to_use_name'] as String, json['unit_name'] as String);
  }

  int get isSelf => _isSelf;

  set isSelf(int value) {
    _isSelf = value;
  }

  int get isSynthetic => _isSynthetic;

  set isSynthetic(int value) {
    _isSynthetic = value;
  }

  String get note => _note;

  set note(String value) {
    _note = value;
  }

  num get numberAfternoon => _numberAfternoon;

  set numberAfternoon(num value) {
    _numberAfternoon = value;
  }

  num get numberDay => _numberDay;

  set numberDay(num value) {
    _numberDay = value;
  }

  num get numberMorning => _numberMorning;

  set numberMorning(num value) {
    _numberMorning = value;
  }

  num get numberNight => _numberNight;

  set numberNight(num value) {
    _numberNight = value;
  }

  num get numberNoon => _numberNoon;

  set numberNoon(num value) {
    _numberNoon = value;
  }

  int get pharmaCategoryId => _pharmaCategoryId;

  set pharmaCategoryId(int value) {
    _pharmaCategoryId = value;
  }

  String get pharmaDosage => _pharmaDosage;

  set pharmaDosage(String value) {
    _pharmaDosage = value;
  }

  String get pharmaDosageDetail => _pharmaDosageDetail;

  set pharmaDosageDetail(String value) {
    _pharmaDosageDetail = value;
  }

  int get pharmaId => _pharmaId;

  set pharmaId(int value) {
    _pharmaId = value;
  }

  String get pharmaName => _pharmaName;

  set pharmaName(String value) {
    _pharmaName = value;
  }

  num get quantity => _quantity;

  set quantity(num value) {
    _quantity = value;
  }

  int get supplyId => _supplyId;

  set supplyId(int value) {
    _supplyId = value;
  }

  String get unitName => _unitName;

  set unitName(String value) {
    _unitName = value;
  }

  String get wayToUseName => _wayToUseName;

  set wayToUseName(String value) {
    _wayToUseName = value;
  }
}

class Ingredient {
  int _active;
  String _ingredientCategoryCode;
  int _ingredientCategoryId;
  int _ingredientCategoryLevel;
  String _ingredientCategoryName;
  int _ingredientCategoryParent;
  String _ingredientCode;
  int _ingredientId;
  String _ingredientName;
  String _ingredientNameEn;
  int _isDel;

  Ingredient(this._active, this._ingredientCategoryCode, this._ingredientCategoryId, this._ingredientCategoryLevel,
      this._ingredientCategoryName, this._ingredientCategoryParent, this._ingredientCode, this._ingredientId, this._ingredientName, this._ingredientNameEn, this._isDel);

  factory Ingredient.fromJson(dynamic json) {
    if( json == null) {
      return null;
    }
    return Ingredient(json['active'] as int, json['ingredient_category_code'] as String, json['ingredient_category_id'] as int,
      json['ingredient_category_level'], json['ingredient_category_name'] as String, json['ingredient_category_parent'] as int,
      json['ingredient_code'] as String,  json['ingredient_id'] as int, json['ingredient_name'] as String,  json['ingredient_name_en'] as String,
      json['is_del'] as int);
  }

  int get active => _active;

  set active(int value) {
    _active = value;
  }

  String get ingredientCategoryCode => _ingredientCategoryCode;

  set ingredientCategoryCode(String value) {
    _ingredientCategoryCode = value;
  }

  int get ingredientCategoryId => _ingredientCategoryId;

  set ingredientCategoryId(int value) {
    _ingredientCategoryId = value;
  }

  int get ingredientCategoryLevel => _ingredientCategoryLevel;

  set ingredientCategoryLevel(int value) {
    _ingredientCategoryLevel = value;
  }

  String get ingredientCategoryName => _ingredientCategoryName;

  set ingredientCategoryName(String value) {
    _ingredientCategoryName = value;
  }

  int get ingredientCategoryParent => _ingredientCategoryParent;

  set ingredientCategoryParent(int value) {
    _ingredientCategoryParent = value;
  }

  String get ingredientCode => _ingredientCode;

  set ingredientCode(String value) {
    _ingredientCode = value;
  }

  int get ingredientId => _ingredientId;

  set ingredientId(int value) {
    _ingredientId = value;
  }

  String get ingredientName => _ingredientName;

  set ingredientName(String value) {
    _ingredientName = value;
  }

  String get ingredientNameEn => _ingredientNameEn;

  set ingredientNameEn(String value) {
    _ingredientNameEn = value;
  }

  int get isDel => _isDel;

  set isDel(int value) {
    _isDel = value;
  }
}

class PharmaIngredientDetail {

  int _ingredientId;

  int get ingredientId => _ingredientId;

  set ingredientId(int value) {
    _ingredientId = value;
  }

  String _ingredientName;

  PharmaIngredientDetail(this._ingredientId, this._ingredientName);

  factory PharmaIngredientDetail.fromJson(dynamic json) {
    return PharmaIngredientDetail(json['ingredient_id'] as int, json['ingredient_name'] as String);
  }

  String get ingredientName => _ingredientName;

  set ingredientName(String value) {
    _ingredientName = value;
  }
}

class PharmaWayToUse {

  int _wayToUseId;

  int get wayToUseId => _wayToUseId;

  set wayToUseId(int value) {
    _wayToUseId = value;
  }

  String _wayToUseName;

  PharmaWayToUse(this._wayToUseId, this._wayToUseName);

  factory PharmaWayToUse.fromJson(dynamic json) {
    return PharmaWayToUse(json['way_to_use_id'] as int, json['way_to_use_name'] as String);
  }

  String get wayToUseName => _wayToUseName;

  set wayToUseName(String value) {
    _wayToUseName = value;
  }
}

class WayToUseSelected {
  int _wayToUserId;

  int get wayToUserId => _wayToUserId;

  set wayToUserId(int value) {
    _wayToUserId = value;
  }

  String _wayToUseName;

  WayToUseSelected(this._wayToUserId, this._wayToUseName);

  factory WayToUseSelected.fromJson(dynamic json) {
    return WayToUseSelected(json['way_to_use_id'] as int, json['way_to_use_name'] as String);
  }

  String get wayToUseName => _wayToUseName;

  set wayToUseName(String value) {
    _wayToUseName = value;
  }
}

