import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utility/padding/padding.dart';



typedef FutureCallBack = Future<void> Function();
typedef FutureCallBackStr = void Function(String);
typedef FutureCallBackStr1 = String? Function(String?);

class MegaTextF extends StatelessWidget {
  final TextEditingController? controller;
  final InputDecoration decoration;
  final TextStyle textStyle;
  final bool? numberInputType;
  final int? minLine;
  final int? maxLine;
  final FutureCallBack? onTap;
  final FutureCallBackStr1? onChanged;
  final bool? readOnly;
  final FutureCallBackStr1? validatorF;
  const MegaTextF(
      {Key? key,
       this.controller,
      required this.decoration,
      required this.textStyle,
       this.numberInputType,
       this.minLine,
       this.maxLine,
      this.onChanged,
      required this.text,
      this.onTap,
       this.readOnly,
       this.validatorF})
      : super(key: key);
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const MegaPadding.top30Horizontal(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text!,style: Theme.of(context).textTheme.headline2,),
          Padding(
            padding: const MegaPadding.textTop8(),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                color: Colors.black.withOpacity(0.04),
                offset: const Offset(0, 1),

                blurRadius: 50,
                spreadRadius: 15,
              )
                ]
              ),
              child: TextFormField(
                
                validator: validatorF,
                key: key,
                keyboardType: numberInputType == true
                    ? TextInputType.number
                    : TextInputType.text,
                readOnly: readOnly ?? false,
                maxLines: maxLine,
                minLines: minLine,
                inputFormatters: numberInputType == true
                    ? <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly]
                    : [],
                decoration: decoration,
                style: textStyle,
                controller: controller,
                onTap: onTap,
                
                onChanged: onChanged,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MegaTextField extends TextFormField {
  final FutureCallBack? onTap;
  final FutureCallBackStr? onChanged;

  final FutureCallBackStr1? validatorF;

  MegaTextField(
      {Key? key,
      TextEditingController? controller,
      required InputDecoration decoration,
      required TextStyle textStyle,
      bool? numberInputType,
      int? minLine,
      int? maxLine,
      this.onTap,
      this.onChanged,
      bool? readOnly,
      this.validatorF})
      : super(
          validator: validatorF,
          key: key,
          keyboardType: numberInputType == true
              ? TextInputType.number
              : TextInputType.text,
          readOnly: readOnly ?? false,
          maxLines: maxLine,
          minLines: minLine,
          inputFormatters: numberInputType == true
              ? <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly]
              : [],
          decoration: decoration,
          style: textStyle,
          controller: controller,
          onTap: onTap,
          onChanged: onChanged,
        );
}
