import 'package:flutter/material.dart';
import '../constants.dart';

class AppBarLayoutHeader extends StatelessWidget implements PreferredSizeWidget {

  @override
  Size get preferredSize => const Size.fromHeight(120);

  @override
  Widget build(BuildContext context) {


    return AppBar(
      automaticallyImplyLeading: false, // hides leading widget
      flexibleSpace: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              height: 160,
              width: 800,
              decoration: BoxDecoration(
                color: kPrimaryLightColor,
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                      top: 35,
                      left: 20,
                      child: Container(
                        width: 80,
                        height: 80,
                      )
                  ),
                  Positioned(
                    top : 35,
                    left: 110,
                    child: Text( "appName", style: TextStyle(
                      fontSize: 25,
                      color: kGrey,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w100,
                    )),
                  ),
                  Positioned(
                    top : 65,
                    left: 110,
                    child: Text( "slogan", style: TextStyle(
                      fontSize: 20,
                      color: kGreen,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w100,
                    )),
                  )
                ],
              )
          ),
          Container(
            height: 140,
            width: 220,
          ),
          Container(
            height: 140,
            width: 400,
            margin: EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
            ),
          ),
        ],
      ),
      backgroundColor: kPrimaryLightColor,
    );
  }

}