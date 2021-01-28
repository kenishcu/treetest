import 'dart:async';

import 'package:flutter/material.dart';
import '../constants.dart';

class FooterWidget extends StatefulWidget {
  @override
  _FooterWidgetState createState() => _FooterWidgetState();
}

class _FooterWidgetState extends State<FooterWidget> {

  int languageId;
  String _timeString;
  Locale locale;
  initState() {
    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    Size size =  MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.1,
      decoration: BoxDecoration(
//        border: Border.all()
      ),
      child: Container(
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 50, top: 10, bottom: 10),
                width: 150,
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: kPrimaryLightColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 6,
                      )]
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 10,
                        left: 0,
                        child: Icon(
                          Icons.keyboard_backspace,
                          size: 40,
                          color: kPrimaryColor,
                        ),
                      ),
                      Positioned(
                          top: 18,
                          left: 45,
                          child: Text("Trở lại", style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w100,
                          ),)
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 200),
                width: 400,
                height: 50,
                decoration: BoxDecoration(
                ),
                child:  Padding(
                  padding: EdgeInsets.only(left: 100, top: 18),
                  child: Text(' Hà Nội, ' + _timeString,
                      style: TextStyle(
                        fontSize: 20,
                        color: kGrey,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.normal,
                      )),
                ),
              ),
            ],
          )
      ),
    );
  }

}