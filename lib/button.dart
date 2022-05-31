import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  CustomButton({
    required Key key,
    required this.backgroundColor,
    required this.child,
    required this.txt,
  }) : super(key: key);

  final child;
  Color backgroundColor;
  final String txt;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool flag = false;
  bool isSwitched = false;
  String State = 'OFF';

  void toggle() {
    setState(() {
      flag = !flag;
      if (flag == true) {
        widget.backgroundColor = Colors.teal;
        isSwitched = true;
        State = 'ON';
      } else {
        widget.backgroundColor = Colors.grey;
        isSwitched = false;
        State = 'OFF';
      }
      return;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Material(
        color: widget.backgroundColor,
        child: InkWell(
          onTap: () {
            toggle();
            print('${flag}');
          },
          child: SizedBox(
            width: 150,
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: widget.child,
                ),
                Text('${widget.txt}'),
                Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      toggle();
                    });
                  },
                  activeTrackColor: Colors.green,
                  activeColor: Colors.teal,
                  inactiveThumbColor: Colors.red,
                  inactiveTrackColor: Colors.redAccent,
                ),
                Text('${State}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
