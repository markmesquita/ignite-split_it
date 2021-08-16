import 'package:split_it/modules/home/models/dashboard_model.dart';
import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/shared/models/event_model.dart';

class HomeRepositoryMock implements HomeRepository {
  @override
  Future<DashboardModel> getDashboard() async {
    await Future.delayed(Duration(seconds: 2));
    return DashboardModel(send: 100, receive: 50);
  }

  @override
  Future<List<EventModel>> getEvents() async {
    await Future.delayed(Duration(seconds: 2));
    return [
      EventModel(
          people: 1,
          created: DateTime(2021, 4, 3),
          title: 'Churrasco',
          value: 32),
      EventModel(
          people: 2,
          created: DateTime(2021, 4, 3),
          title: 'Almoço',
          value: -48),
      EventModel(
          people: 2,
          created: DateTime(2021, 4, 3),
          title: 'Almoço',
          value: -48),
      EventModel(
          people: 2, created: DateTime(2021, 4, 3), title: 'Almoço', value: 48),
      EventModel(
          people: 2, created: DateTime(2021, 4, 3), title: 'Almoço', value: 48),
      EventModel(
          people: 2,
          created: DateTime(2021, 4, 3),
          title: 'Almoço',
          value: -48),
      EventModel(
          people: 2, created: DateTime(2021, 4, 3), title: 'Almoço', value: 48),
      EventModel(
          people: 2,
          created: DateTime(2021, 4, 3),
          title: 'Almoço',
          value: -48),
      EventModel(
          people: 2, created: DateTime(2021, 4, 3), title: 'Almoço', value: 48),
      EventModel(
          people: 2, created: DateTime(2021, 4, 3), title: 'Almoço', value: 48),
      EventModel(
          people: 2, created: DateTime(2021, 4, 3), title: 'Almoço', value: 48),
      EventModel(
          people: 2, created: DateTime(2021, 4, 3), title: 'Almoço', value: 48),
      EventModel(
          people: 2, created: DateTime(2021, 4, 3), title: 'Almoço', value: 48),
      EventModel(
          people: 2, created: DateTime(2021, 4, 3), title: 'Almoço', value: 48),
    ];
  }
}
