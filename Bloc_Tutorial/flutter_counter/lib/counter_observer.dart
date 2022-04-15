import 'package:bloc/bloc.dart';

/// {@template counter_observer}
/// [//BlocObserver] for the counter application which
/// observes all state changes.
/// {@endtemplate}
class CounterObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('${bloc.runtimeType} $change');
  }
}
//Điều đầu tiên chúng ta sẽ xem xét 
//cách tạo BlocObserver sẽ giúp chúng ta quan sát tất cả các thay đổi trạng thái trong ứng dụng.