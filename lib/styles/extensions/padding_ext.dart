import 'package:flutter/cupertino.dart';
import '../layouts/sizes.dart';



extension PaddingExtension on Widget {
  Padding pad0() => Padding(
    padding: EdgeInsets.zero,
    child: this,

  );
  Padding pad1()=>Padding(
    padding: EdgeInsets.all(Sizes.s1),
    child: this,

  );
  Padding pad2()=>Padding(
    padding: EdgeInsets.all(Sizes.s2),
    child: this,
  );

  Padding pad3()=>Padding(
    padding: EdgeInsets.all(Sizes.s3),
    child: this,
  );

  Padding pad4()=>Padding(
    padding: EdgeInsets.all(Sizes.s4),
    child: this,
  );

  Padding pad5()=>Padding(
    padding: EdgeInsets.all(Sizes.s5),
    child: this,
  );

  Padding pad6()=>Padding(
    padding: EdgeInsets.all(Sizes.s6),
    child: this,
  );

  Padding pad7()=>Padding(
    padding: EdgeInsets.all(Sizes.s7),
    child: this,
  );


  Padding pad8()=>Padding(
    padding: EdgeInsets.all(Sizes.s8),
    child: this,
  );


  Padding pad9()=>Padding(
    padding: EdgeInsets.all(Sizes.s9),
    child: this,
  );

  Padding pad10()=>Padding(
    padding: EdgeInsets.all(Sizes.s10),
    child: this,
  );

  Padding pad16()=>Padding(
    padding: EdgeInsets.all(Sizes.s16),
    child: this,
  );


  Padding padver(double value)=>Padding(
    padding:EdgeInsets.symmetric(horizontal: value),
    child: this,
  );

  Padding padhor(double value)=>Padding(
    padding:EdgeInsets.symmetric(vertical: value),
    child: this,
  );


  Padding padAll(double value)=>Padding(
    padding: EdgeInsets.all(value),
    child: this,
  );

  Padding padLTRB(
      double left,
      double right,
      double top,
      double bottom)=>Padding(
    padding:EdgeInsets.fromLTRB(left, top, right, bottom),
    child: this,

  );

  Padding padSymmetric( {double ver = 0.0, double hor = 0.0}) => Padding(
    padding: EdgeInsets.symmetric(
      vertical: ver,
      horizontal: hor,
    ),
    child: this,
  );

  Padding padOnly({
    double left = 0.0,
    double right = 0.0,
    double top = 0.0,
    double bottom = 0.0,
  }) =>
      Padding(
        padding: EdgeInsets.only(left: left, right: right, top: top, bottom: bottom),
        child: this,
      );
}

extension CenterWidgetExtension on Widget{
  Widget center()=>Center(
    child: this,
  );
}

extension SizedBoxExtension on Widget{
  Widget sizedBox({required double height,required double width})=>sizedBox(
    height: height,
    width:width,
  );

  Widget sizedBoxheight(double height)=>SizedBox(
    height: height,
    child: this,
  );

  Widget  sizedBoxwidth(double width)=>SizedBox(
    height: width,
    child: this,
  );
}

extension MarginExtension on Widget{
  
}

