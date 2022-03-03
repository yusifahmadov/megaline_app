import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'presentation/bloc/product_detail/product_detail_bloc.dart';
import 'presentation/pages/main_screen/main_screen.dart';
import 'core/config/theme/app_theme.dart';
import 'core/injection/injection.dart';
class AppBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    debugPrint(event.toString());
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    debugPrint(error.toString());

    super.onError(bloc, error, stackTrace);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    debugPrint(change.toString());
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    debugPrint(transition.toString());
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection('');
  BlocOverrides.runZoned(() {
    runApp(const MaterialApp(home: MyApp()));
  }, blocObserver: AppBlocObserver());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  BlocProvider<ProductDetailBloc>(
        create: (context) => ProductDetailBloc(),
        child: const MainScreenView(),
      ),
      theme: ThemeManager.craeteTheme(AppThemeLight()),
    );
  }
}
