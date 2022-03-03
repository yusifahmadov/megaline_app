import 'package:flutter/material.dart';

import '../../utility/border_radius/border_radius.dart';


typedef FutureCallback = Future<void> Function();

class MaterialIconButton extends StatelessWidget {
  final FutureCallback onTap;
  final String icon;
  final Color? backgroundColor;
  final double? padding;
  final Color? iconColor;
  final bool? hasBorderRadius;
  const MaterialIconButton({Key? key, required this.onTap,required this.icon,  this.backgroundColor, this.padding, this.hasBorderRadius,this.iconColor}) : super(key: key);
  void _completeProcess() async {
    await onTap();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor??Colors.transparent,
      
      borderRadius:  hasBorderRadius ==true? NormalBorderRadius():BorderRadius.circular(0),
      child: InkWell(
          
          splashColor: Colors.black.withOpacity(0.1),
          onTap: () {
            _completeProcess();
          },
          borderRadius: hasBorderRadius ==true? NormalBorderRadius():BorderRadius.circular(0),

          child:  Padding(
            padding: EdgeInsets.all(padding??10.0),
            child:const Icon(Icons.close),
          )),
    );
  }
}
