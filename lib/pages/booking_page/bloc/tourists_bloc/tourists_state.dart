part of 'tourists_bloc.dart';

sealed class TouristsStateClass extends Equatable {
  const TouristsStateClass();

  @override
  List<Object> get props => [];
}

class TouristsState extends TouristsStateClass {
  final List<TouristData> touristsData;
  final int touristsCounter;
  final List names;
  final List surnames;
  const TouristsState(
      {required this.names,
      required this.surnames,
      required this.touristsData,
      required this.touristsCounter});

  @override
  List<Object> get props => [touristsData, touristsCounter, names, surnames];
}
