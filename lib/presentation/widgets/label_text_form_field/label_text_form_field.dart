import 'package:flutter/material.dart';

import '../../utility/padding/padding.dart';
import '../input_decoration/mega_input_decoration.dart';
import '../text_form_field/mega_text_form_field.dart';

class LabelMegaTextField extends StatelessWidget {
  final String headerText;
  const LabelMegaTextField({Key? key, required this.headerText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const MegaPadding.top30Horizontal(),
          child: Text(headerText),
        ),
        Padding(
          padding: const MegaPadding.listTileTop10(),
          child: MegaTextField(
            
            textStyle: Theme.of(context).textTheme.bodyText1!,
            decoration: MegaInputDecoration(
                context: context,
                hintStyle: Theme.of(context).textTheme.bodyText1!,
                hintText: ""),
          ),
        )
      ],
    );
  }
}
