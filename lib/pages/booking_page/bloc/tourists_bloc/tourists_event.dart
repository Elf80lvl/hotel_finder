part of 'tourists_bloc.dart';

sealed class TouristsEvent extends Equatable {
  const TouristsEvent();

  @override
  List<Object> get props => [];
}

class TouristsAddEvent extends TouristsEvent {}

class TouristsOnSubmitEvent extends TouristsEvent {}

class TouristUpdateNameEvent extends TouristsEvent {
  final int index;
  final String name;

  const TouristUpdateNameEvent({required this.index, required this.name});
  @override
  List<Object> get props => [index, name];
}

class TouristUpdateSurnameEvent extends TouristsEvent {
  final int index;
  final String surname;

  const TouristUpdateSurnameEvent({required this.index, required this.surname});
  @override
  List<Object> get props => [index, surname];
}
