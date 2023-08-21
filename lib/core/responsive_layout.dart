import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({Key? key, 
  required this.ultrawide,
  required this.wide,
  required this.narrow}) : super(key: key);

  final ultrawide;
  final wide;
  final narrow;

  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        if(maxWidth > 1200){
          return ultrawide;
        } else if(maxWidth > 600){
          return wide;
        }else {
          return narrow;
        }
      },
    );
  }
}