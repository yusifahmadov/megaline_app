import 'package:flutter/material.dart';

import '../../utility/border_radius/border_radius.dart';
import '../../utility/padding/padding.dart';

typedef FutureCallBack = Future<void> Function();

class MegaInputDecoration extends InputDecoration {

  MegaInputDecoration(
      {required context,
      required hintText,
      bool? clearButton,
      Color? iconColor,
       Color? fillColor,
       FutureCallBack? onTap,
       TextStyle? hintStyle,
      String? prefixText,
       String?  icon})
      : super(
            prefixText: prefixText,
            hintStyle: hintStyle,
            filled: true,
            hintText: hintText,
            
            
            // ignore: await_only_futures
            suffixIcon: clearButton != false && clearButton !=null?GestureDetector(child: const Icon(Icons.clear),onTap: ()async{await onTap;},):null,
            prefixIcon: icon !=null ? const Padding(
              padding: MegaPadding.all12(),
             
            ):null,
            fillColor: fillColor??Colors.white,
            border: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: NormalBorderRadius()),
            );
              
            
}
