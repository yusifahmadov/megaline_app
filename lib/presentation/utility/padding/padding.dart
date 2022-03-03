import 'package:flutter/material.dart';

class MegaPadding extends EdgeInsets{
  const MegaPadding.all(double value) : super.all(10);
  
  const MegaPadding.normalHorizontal(): super.symmetric(horizontal: 20);
  const MegaPadding.loginForm(): super.fromLTRB(30, 20, 30, 0);
  const MegaPadding.top30(): super.fromLTRB(0, 30, 0, 0);
  const MegaPadding.top30Horizontal() : super.fromLTRB(20, 30, 20, 0);
  const MegaPadding.button60() : super.symmetric(horizontal: 140);
  const MegaPadding.textTop20(): super.fromLTRB(0, 20, 0, 0);
  const MegaPadding.textTop8(): super.fromLTRB(0,8, 0, 0);
  const MegaPadding.listTileTop10():super.fromLTRB(20, 10, 20, 0);
  const MegaPadding.right10():super.fromLTRB(0, 0, 10, 0);
  const MegaPadding.right15():super.fromLTRB(0, 0, 15, 0);
  const MegaPadding.right20():super.fromLTRB(0, 0, 20, 0);
  const MegaPadding.left15():super.fromLTRB(15, 0, 0, 0);
  const MegaPadding.left30():super.fromLTRB(30, 0, 0, 0);
  const MegaPadding.left30Top20Horizontal():super.fromLTRB(30, 20, 0, 0);
  const MegaPadding.all12():super.all(12);
  const MegaPadding.left15Top30(): super.fromLTRB(15, 30, 0, 0);
  const MegaPadding.top15Horizontal(): super.fromLTRB(20, 15, 20, 0);
  const MegaPadding.top15Horizontal40(): super.fromLTRB(40, 15, 40, 0);
  const MegaPadding.top30Horizontal40(): super.fromLTRB(40, 30, 40, 0);
  const MegaPadding.top8Horizontal(): super.fromLTRB(20, 8, 20, 0);
  const MegaPadding.top8ProductHorizontal(): super.fromLTRB(10, 8, 10, 0);
  const MegaPadding.top30Right20(): super.fromLTRB(0, 30, 20, 0);
}