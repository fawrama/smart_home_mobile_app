import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  CustomButton({
    required Key key,
    required this.backgroundColor,
    this.child,
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
        widget.backgroundColor = Color.fromRGBO(0, 150, 136, 1);
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
      height: 130,
      child: Material(
        color: widget.backgroundColor,
        child: InkWell(
          onTap: () {
            toggle();
            print('${flag}');
          },
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
    );
  }
}
