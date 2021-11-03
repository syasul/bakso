import 'package:flutter/material.dart';

class Sosmed extends StatelessWidget {
  const Sosmed({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: CircleAvatar(
              backgroundImage: new AssetImage(
                'assets/images/icons_facebook.png',
              ),
              backgroundColor: Colors.transparent,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: size.width * 0.03),
            child: CircleAvatar(
              backgroundImage: new AssetImage(
                'assets/images/icons_google.png',
              ),
              backgroundColor: Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}
