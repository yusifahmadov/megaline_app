import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/subjects.dart';
@injectable
class SliderIndicatorCubit extends Cubit<int> {
  SliderIndicatorCubit() : super(0);
  

  final _indicatorController = BehaviorSubject<int>();
  Stream<int> get indicator => _indicatorController.stream;
  int get indicatorGetter => _indicatorController.value;


  updateIndicator(int now, int max){
    _indicatorController.add(now);
  }

  @override
  Future<void> close() {
    _indicatorController.close();
    return super.close();
  }
}