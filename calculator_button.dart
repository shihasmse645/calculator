import 'package:flutter/material.dart';

class CalButton extends StatelessWidget {
  final String text;
  final String fillColor;
  final Function callback;
  const CalButton({Key key, this.text, this.fillColor, this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: ClipOval(
        child: Material(
          color: Colors.deepPurple, // button color
          child: InkWell(
            splashColor: Colors.greenAccent, // inkwell color
            child: SizedBox(
                width: 65,
                height: 65,
                child: Center(
                  child: Text(text,
                      style: TextStyle(fontSize: 22, color: Colors.white)),
                )),
            onTap: () {
              callback(text);
            },
          ),
        ),
      ),
    );
  }
}
