import 'package:flutter/material.dart';

import '../constants.dart';

class HeaderWidget extends StatefulWidget {

  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    Size size =  MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.12,
      decoration: BoxDecoration(
//        color: kPrimaryLightColor,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: size.width * 0.4,
            child: Stack(
              children: <Widget>[
                Positioned(
                    top: 10,
                    left: 20,
                    child: Container(
                      width: 80,
                      height: 80,
                      child: Image.asset("assets/images/logo.png"),
                    )
                ),
                Positioned(
                  top : 12,
                  left: 110,
                  child: Text("Bệnh viện đa khoa Hồng Ngọc", style: TextStyle(
                    fontSize: 25,
                    color: kGrey,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w100,
                  )),
                ),
                Positioned(
                  top : 45,
                  left: 160,
                  child: Text("Nơi gửi trọn niềm tin ", style: TextStyle(
                    fontSize: 18,
                    color: kGreen,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w100,
                  )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

}