import 'package:split_it/modules/home/home_state.dart';
import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/modules/home/repositories/home_repository_mock.dart';

class HomeController {
  late HomeRepository repository;
  Function(HomeState state)? onListen;

  HomeState state = HomeStateEmpty();

  HomeController({HomeRepository? repository}) {
    this.repository = repository ?? HomeRepositoryMock();
  }

  getEvents() async {
    update(HomeStateLoading());
    try {
      final response = await repository.getEvents();
      update(HomeStateSuccess(events: response));
    } catch (e) {
      update(HomeStateFailure(message: e.toString()));
    }
  }

  void update(HomeState state) {
    this.state = state;
    if (onListen != null) {
      onListen!(state);
    }
  }

  listen(Function(HomeState state) onChange) {
    onListen = onChange;
  }
}
