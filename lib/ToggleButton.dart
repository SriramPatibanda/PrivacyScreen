import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ToggleButton extends StatefulWidget {
  @override
  _ToggleButtonState createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RawMaterialButton(
        onPressed: (){
          print('Button pressed');
        },
        child: SizedBox(
          width: 60,
          height: 250,
          child: Switch(
          activeThumbImage: ExactAssetImage('images/active-dot.png'),
          inactiveThumbImage: ExactAssetImage('images/active-dot.png'),
          activeColor: Color.fromRGBO(255, 189, 18, 100),
            value: isChecked,
            onChanged: (bool value) {
            if(isChecked== false) {
              setState(() {
                isChecked = true;
              });
            }else{
              setState(() {
                isChecked= false;
              });
            }
            },
          ),
        ),
      ),
    );
  }
}



