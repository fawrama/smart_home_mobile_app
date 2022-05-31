import 'package:flutter/material.dart';
import 'button.dart' as btt;

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(20),
                width: 150,
                height: 150,
                child: Column(
                  children: [
                    btt.CustomButton(
                      backgroundColor: Colors.grey,
                      txt: 'coffee machine',
                      child: Icon(Icons.coffee_maker),
                      key: UniqueKey(),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                width: 150,
                height: 150,
                child: Column(
                  children: [
                    btt.CustomButton(
                      txt: 'TV',
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.tv_rounded),
                      key: UniqueKey(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(20),
                width: 150,
                height: 150,
                child: Column(
                  children: [
                    btt.CustomButton(
                      txt: 'lights',
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.light),
                      key: UniqueKey(),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                width: 150,
                height: 150,
                child: Column(
                  children: [
                    btt.CustomButton(
                      txt: 'AC',
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.air),
                      key: UniqueKey(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(20),
                width: 150,
                height: 150,
                child: Column(
                  children: [
                    btt.CustomButton(
                      txt: 'security system',
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.https_outlined),
                      key: UniqueKey(),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                width: 150,
                height: 150,
                child: Column(
                  children: [
                    btt.CustomButton(
                      txt: 'sound system',
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.speaker),
                      key: UniqueKey(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
