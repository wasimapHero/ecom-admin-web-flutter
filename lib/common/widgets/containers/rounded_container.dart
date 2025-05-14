import 'package:flutter/material.dart';
class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer({super.key, this.height, this.width, this.backgroundColor});

  final double? height;
  final double? width;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: ShapeDecoration(
            color: backgroundColor,
            shape: RoundedRectangleBorder(
              // side:new  BorderSide(color: Color(0xFF2A8068)),
                borderRadius: new BorderRadius.all(new Radius.circular(40)))));
  }
}
