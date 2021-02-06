import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/colors/colors.dart';

class NintendoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Base(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Screen(
                child: Center(
                  child: Logo(),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: LeftSide(),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: RightSide(),
            ),
            Positioned(
              left: 125,
              bottom: 50,
              child: Transform.scale(
                scale: .4,
                child: Logo(
                  bgColor: AppColors.bgScreenBottom,
                  logoColor: AppColors.smallLogo,
                ),
              ),
            ),
            Positioned(
              left: 100,
              bottom: 90,
              child: Lights(),
            )
          ],
        ),
      ),
    );
  }
}

class BigButton extends StatelessWidget {
  final d1 = 58.0;
  final d2 = 48.0;
  final d3 = 44.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: d1,
      height: d1,
      decoration: BoxDecoration(
        border: Border.all(),
        color: Colors.red,
        gradient: LinearGradient(
          colors: [
            AppColors.bigButtonLayer0Top,
            AppColors.bigButtonLayer0Bottom,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(d1 / 2),
      ),
      child: Center(
        child: Container(
          width: d2,
          height: d2,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.bigButtonLayer1Botto,
                AppColors.bigButtonLayer1Top,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
            borderRadius: BorderRadius.circular(d2 / 2),
          ),
          child: Center(
            child: Container(
              width: d3,
              height: d3,
              decoration: BoxDecoration(
                border: Border.all(),
                gradient: LinearGradient(
                  colors: [
                    AppColors.bigButtonLayer2Botto,
                    AppColors.bigButtonLayer2Top,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(d3 / 2),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  final int size;
  final Color bgColor;
  final Color logoColor;

  final r1 = 35.0;
  final r2 = 24.0;
  final r3 = 30 / 2;

  Logo({
    this.size = 125,
    this.bgColor = AppColors.screen,
    this.logoColor = AppColors.bigLogo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      height: 125,
      child: Stack(
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(r1),
                color: logoColor,
              ),
            ),
          ),
          Center(
            child: Container(
              color: bgColor,
              width: 11,
            ),
          ),
          Positioned(
            top: 11,
            left: 11,
            child: Container(
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(r2),
                  bottomLeft: Radius.circular(r2),
                ),
              ),
              width: 125.0 - (11 * 8),
              height: 125 - 11 - 11.0,
            ),
          ),
          Positioned(
            top: 30,
            left: 15,
            child: Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                  color: logoColor, borderRadius: BorderRadius.circular(14)),
            ),
          ),
          Positioned(
            top: 70,
            left: 80,
            child: Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                  color: bgColor, borderRadius: BorderRadius.circular(14)),
            ),
          ),
        ],
      ),
    );
  }
}

class LeftSide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      height: 260,
      decoration: BoxDecoration(
        color: AppColors.leftSide,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(80),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 40,
            bottom: 150,
            child: BigButton(),
          ),
          Positioned(
            left: 53,
            bottom: 90,
            child: SmallButton(
              label: Icon(
                Icons.arrow_drop_up,
                color: Color(0xff182022),
              ),
            ),
          ),
          Positioned(
            left: 53,
            bottom: 30,
            child: SmallButton(
              label: Icon(
                Icons.arrow_drop_down,
                color: Color(0xff182022),
              ),
            ),
          ),
          Positioned(
            left: 83,
            bottom: 60,
            child: SmallButton(
              label: Icon(
                Icons.arrow_right_outlined,
                color: Color(0xff182022),
              ),
            ),
          ),
          Positioned(
            left: 23,
            bottom: 60,
            child: SmallButton(
              label: Icon(
                Icons.arrow_left_outlined,
                color: Color(0xff182022),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 20,
            child: Transform.scale(
              scale: 4.0,
              child: Text(
                '-',
                style: TextStyle(fontSize: 20, color: Color(0xff4A494E)),
              ),
            ),
          ),
          Positioned(
            left: 15,
            bottom: 15,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff8F8989),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(color: Color(0xff333B3D)),
                  child: Icon(Icons.stop),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RightSide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      height: 260,
      decoration: BoxDecoration(
        color: AppColors.rightSide,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(80),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 40,
            bottom: 70,
            child: BigButton(),
          ),
          Positioned(
            right: 54,
            bottom: 205,
            child: SmallButton(
              label: Text(
                'X',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            right: 54,
            bottom: 145,
            child: SmallButton(
              label: Text(
                'B',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            right: 24,
            bottom: 175,
            child: SmallButton(
              label: Text(
                'A',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            right: 84,
            bottom: 175,
            child: SmallButton(
              label: Text(
                'Y',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 20,
            child: Transform.scale(
              scale: 3.0,
              child: Text(
                '+',
                style: TextStyle(fontSize: 20, color: Color(0xff4A494E)),
              ),
            ),
          ),
          Positioned(
            right: 15,
            bottom: 15,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff8F8989),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xff333B3D),
                      borderRadius: BorderRadius.circular(30)),
                  child: Icon(Icons.home),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SmallButton extends StatelessWidget {
  final Widget label;

  SmallButton({
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    final d1 = 30.0;
    final d2 = 22.0;

    return Container(
      width: d1,
      height: d1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(d1 / 2),
        gradient: LinearGradient(
          colors: [
            AppColors.actionButtonBottomLayer1Top,
            AppColors.actionButtonBottomLayer1Bottom,
          ],
        ),
      ),
      child: Center(
        child: Container(
          width: d2,
          height: d2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(d1 / 2),
            gradient: LinearGradient(
              colors: [
                AppColors.actionButtonBottomLayer1Bottom,
                AppColors.actionButtonBottomLayer1Top,
              ],
            ),
          ),
          child: Center(
            child: label,
          ),
        ),
      ),
    );
  }
}

class Screen extends StatelessWidget {
  final Widget child;

  Screen({this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.screen,
        ),
        child: child,
      ),
    );
  }
}

class Base extends StatelessWidget {
  final Widget child;

  Base({
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 660,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.bgScreenTop,
            AppColors.bgScreenBottom,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: child,
    );
  }
}

class Lights extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            Column(
              children: [
                green(),
                gray(),
                gray(),
                gray(),
              ],
            ),
            Column(
              children: [
                gray(),
                gray(),
                gray(),
                gray(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget gray() {
    return (ball(
      Color(0xff222327),
    ));
  }

  Widget green() {
    return (ball(
      Color(0xffB6EBA5),
    ));
  }

  Widget ball(Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 3,
        horizontal: 40,
      ),
      child: Container(
        width: 6,
        height: 6,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(2),
        ),
      ),
    );
  }
}
