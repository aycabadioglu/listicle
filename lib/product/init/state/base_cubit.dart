import 'package:bloc/bloc.dart';

/// Base state for dependency injection
/// provides [cacheStore,...] as getter method
mixin BaseCubit<T> on BlocBase<T> {
  @override
  void emit(T state) {
    if (isClosed) return;
    super.emit(state);
  }
}
