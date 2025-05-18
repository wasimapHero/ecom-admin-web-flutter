// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class TShimmerEffect extends StatelessWidget {
  const TShimmerEffect({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);
   
  final double width;
  final double height;


  @override
  Widget build(BuildContext context){
    return Shimmer(child: Container(
      width: width, height: height,
    ), gradient: LinearGradient(
    begin: Alignment.bottomRight,
    end: Alignment.centerLeft,
    stops: const <double>[0, 0.3, 0.6, 0.9, 1],
    colors: [
     Colors.teal.withValues(alpha: 0.1),
     Colors.teal.withValues(alpha: 0.3),
     Colors.teal.withValues(alpha: 0.5),
     Colors.teal.withValues(alpha: 0.7),
     Colors.teal.withValues(alpha: 0.9),
    ],
  ));
  }
}
