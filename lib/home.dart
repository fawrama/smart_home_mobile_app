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

class kitchen extends StatelessWidget {
  const kitchen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              btt.CustomButton(
                backgroundColor: Colors.grey,
                txt: 'coffee machine',
                child: Icon(Icons.coffee_maker),
                key: UniqueKey(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class living_room extends StatelessWidget {
  const living_room({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              btt.CustomButton(
                txt: 'TV',
                backgroundColor: Colors.grey,
                child: Icon(Icons.tv_rounded),
                key: UniqueKey(),
              ),
              btt.CustomButton(
                txt: 'sound system',
                backgroundColor: Colors.grey,
                child: Icon(Icons.speaker),
                key: UniqueKey(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
