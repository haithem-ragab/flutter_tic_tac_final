import 'package:flutter/material.dart';
import 'package:flutter_tic_tac_final/theme/theme.dart';

class X extends StatelessWidget {
  double size;
  double height;
  X(this.size, this.height);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: size / 2 - height / 2,
            child: RotationTransition(
              turns: AlwaysStoppedAnimation(-45 / 360),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      stops: [
                        0.1,
                        0.8
                      ],
                      colors: [
                        MyTheme.blueViolet,
                        MyTheme.deepPick,
                      ]),
                ),
                height: height,
                width: size,
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: size / 2 - height / 2,
            child: RotationTransition(
              turns: AlwaysStoppedAnimation(45 / 360),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [0.1, 0.8],
                    colors: [MyTheme.deepPick, MyTheme.blueViolet],
                  ),
                ),
                height: height,
                width: size,
              ),
            ),
          )
        ],
      ),
    );
  }
}
