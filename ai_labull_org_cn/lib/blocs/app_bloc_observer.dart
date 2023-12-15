import 'package:flutter_bloc/flutter_bloc.dart';

// class AppBlocObserver extends BlocObserver {
//   @override
//   void onEvent(Bloc bloc, Object? event) {
//     super.onEvent(bloc, event);
//     print('Event: $event');
//   }

//   @override
//   void onTransition(Bloc bloc, Transition transition) {
//     super.onTransition(bloc, transition);
//     print('Transition: $transition');
//   }

//   @override
//   void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
//     print('Error: $error');
//     super.onError(bloc, error, stackTrace);
//   }

// }
class AppBlocObserver extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(
        'Event: ${transition.event.runtimeType}, State: ${transition.nextState.runtimeType}');
  }

  // Rest of the code
}
