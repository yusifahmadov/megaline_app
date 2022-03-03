import 'package:flutter/material.dart';

import '../../utility/border_radius/border_radius.dart';




typedef FutureCallback = Future<void> Function();

class MegaMaterialTextButton extends StatelessWidget {
  final FutureCallback onPressed;
  final String text;
  final TextStyle? textStyle;
  final bool maxSize;
  final Color? buttonColor;
  const MegaMaterialTextButton({Key? key, required this.onPressed, required this.text,  this.textStyle, this.buttonColor,required this.maxSize}) : super(key: key);

  void _completeProcess() async{
      await onPressed();
    }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: maxSize == true? double.infinity:null,
      child: MaterialButton(
        
        color: buttonColor??Theme.of(context).colorScheme.primary,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: NormalBorderRadius()),
        padding: const EdgeInsets.all(12),
        hoverElevation: 0,
        focusElevation:0,
        height: 45,
        minWidth: 150,
        highlightElevation: 0,
        highlightColor: Colors.transparent,
        splashColor: Colors.black.withOpacity(0.5),
        onPressed: ()async {
          _completeProcess();
        },
      
        child: Text(text,style: textStyle??Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),),
      ),
    );
  }
}
