import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final double? height;
  final bool? iShadowFull;
  final Color? shadowColor;
  final Color? buttonColor;
  final GestureTapCallback? onTap;
  const CommonButton({
    Key? key,
    this.onTap,
    this.height,
    this.iShadowFull = false,
    this.shadowColor,
    this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: height! / 1.4,
          width: iShadowFull! ? double.infinity : MediaQuery.of(context).size.width - 70,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 15,
                spreadRadius: 7,
                color: shadowColor ?? Colors.pinkAccent,
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            alignment: Alignment.center,
            height: height,
            width: double.infinity,
            decoration: BoxDecoration(
              color: buttonColor ?? Colors.yellow,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              'New Login',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
