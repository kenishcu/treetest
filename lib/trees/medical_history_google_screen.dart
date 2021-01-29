import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:date_range_picker/date_range_picker.dart' as DateRagePicker;
import 'package:flutter_simple_treeview/flutter_simple_treeview.dart';
import 'package:treestest/components/app_bar.dart';
import 'package:treestest/components/footer_widget.dart';
import 'package:treestest/model/medical_history.dart';
import 'package:treestest/representation/medical_history_api_provider.dart';

import '../constants.dart';


class MedicalHistoryGoogleScreen extends StatefulWidget {
  @override
  MedicalHistoryGoogleScreenState createState() => MedicalHistoryGoogleScreenState();
}

class MedicalHistoryGoogleScreenState extends State<MedicalHistoryGoogleScreen> {

  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  List<MetaDataMedicalHistoryParent> _metaData;

  static TextEditingController _inputFromcController = new TextEditingController();

  final MedicalHistoryApiProvider medicalHistoryApiProvider = new MedicalHistoryApiProvider();

  final TreeController _treeController =
  TreeController(allNodesExpanded: false);

  @override
  void initState() {
    super.initState();
    initData();
  }

  /// Init data
  void initData() async {
    final result = await medicalHistoryApiProvider.getMedicalHistory();
    _metaData = result.results;
  }

  /// Builds tree or error message out of the entered content.
  Widget buildTree() {
    try {
      return TreeView(
        nodes: toTreeNodes(),
        treeController: _treeController,
      );
    } on FormatException catch (e) {
      return Text(e.message);
    }
  }

  /// Builds tree
  List<TreeNode> toTreeNodes() {
    List<TreeNode> nodes = [];
    if(_metaData == null) {
      return nodes;
    }
    _metaData.forEach((element) {
      if (element.id.inPatient == 1) {
        nodes.add(TreeNode(content: Text("Ngoại trú")));
      } else {
        nodes.add(TreeNode(content: Text("Nội trú")));
      }
    });
    return nodes;
  }

  @override
  Widget build(BuildContext context) {
    Size size =  MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.13,
          child: Form(
            key: _formKey,
            child: Row(
              children: [
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 200,
                        height: 50,
                        padding: EdgeInsets.only(top: 18, left: 50),
                        child: Text("Thời gian", style: TextStyle(
                            fontSize: 18
                        )),
                      ),
                      Container(
                        width: 240,
                        height: 30,
                        margin: EdgeInsets.only(top: 15, left: 30),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: kGrey, width: 0.2),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            filled: true,
                            hintText: 'Chọn khoảng thời gian ...',
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                                fontSize: 13, color: kGrey, decoration: TextDecoration.none, fontFamily: 'Roboto', fontWeight: FontWeight.w100
                            ),
                          ),
                          enabled: false,
                          controller: _inputFromcController,
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
//                                          margin: EdgeInsets.all(0),
                        padding: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                        ),
                        child: FlatButton(
                          onPressed: () async {
                            final List<DateTime> picked = await DateRagePicker.showDatePicker(
                                locale: Locale('vi'),
                                context: context,
                                initialFirstDate: new DateTime.now().subtract(new Duration(days: 30)),
                                initialLastDate: (new DateTime.now()).add(new Duration(days: 7)),
                                firstDate: new DateTime(2015),
                                lastDate: new DateTime(2022)
                            );
                            if (picked != null && picked.length == 2) {
                              String formattedDateFrom = DateFormat('dd/MM/yyyy').format(picked[0]);
                              String formattedDateTo = DateFormat('dd/MM/yyyy').format(picked[1]);
                              setState(() {
                                _inputFromcController.text = formattedDateFrom + ' - ' + formattedDateTo;
                              });
//                                         getMedicalHistory(picked[0], picked[1], true);
                            }
                          },
                          padding: EdgeInsets.all(0),
                          child: Icon(
                            Icons.event,
                            size: 30,
                            color: kPrimaryColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xffB0B0B0)),
          ),
          height: size.height * 0.07,
          margin: EdgeInsets.only(left: 50, right: 50),
          child: Row(
            children: [
//                      Container(
//                        child: Align(
//                          alignment: Alignment.center,
//                          child: Text("STT"),
//                        ),
//                        width: size.width * 0.05,
//                      ),
              Container(
                width: size.width * 0.5,
                child: Text("  Thông tin bệnh sử"),
              )
            ],
          ),
        ),
        Container(
          height: size.height * 0.51,
          margin: EdgeInsets.only(left: 50, right: 50),
          decoration: BoxDecoration(
//              border: Border(
//                right: BorderSide(
//                    color: Color(0xffB0B0B0),
//                    width: 1.0
//                ),
//                left: BorderSide(
//                    color: Color(0xffB0B0B0),
//                    width: 1.0
//                ),
//                bottom:  BorderSide(
//                    color: Color(0xffB0B0B0),
//                    width: 1.0
//                ),
//              )
          ),
          child: Scrollbar(
            child: buildTree(),
          ),
        ),
      ],
    );
  }

}