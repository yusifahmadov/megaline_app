import 'package:flutter/material.dart';

import '../../utility/padding/padding.dart';
import '../../widgets/buttons/async_button.dart';
import '../../widgets/input_decoration/mega_input_decoration.dart';
import '../../widgets/text_form_field/mega_text_form_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           const LoginField(),
           const EmailField(),
           const PasswordField(),
          _loginButton()
        ],
      ),
    );
  }

  Padding _loginButton() {
    return Padding(
          padding: const MegaPadding.top30Horizontal(),
          child:  MegaMaterialTextButton(maxSize: false, onPressed:()async{}, text: 'Giriş Et',buttonColor: const Color(0xff131939), ),
        );
  }
}

class PasswordField extends StatelessWidget {
  const PasswordField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding:const MegaPadding.top30Horizontal(),
     child: MegaTextField(decoration: MegaInputDecoration(context: context, hintText: "Password",fillColor: const Color(0xffF0F3F7)), textStyle: Theme.of(context).textTheme.bodyText1!,),
          );
  }
}

class EmailField extends StatelessWidget {
  const EmailField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: const MegaPadding.top30Horizontal(),
     child: MegaTextField(decoration: MegaInputDecoration(context: context, hintText: "Email",fillColor: const Color(0xffF0F3F7)), textStyle: Theme.of(context).textTheme.bodyText1!,),
          );
  }
}

class LoginField extends StatelessWidget {
  const LoginField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Giriş",style: Theme.of(context).textTheme.headline3,);
  }
}