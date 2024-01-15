part of 'room_page_bloc.dart';

sealed class RoomPageState extends Equatable {
  const RoomPageState();

  @override
  List<Object> get props => [];
}

final class RoomPageLoadingState extends RoomPageState {}

final class RoomPageLoadedState extends RoomPageState {
  final RoomInfoModel data;

  const RoomPageLoadedState({required this.data});
  @override
  List<Object> get props => [data];
}

final class RoomPageErrorState extends RoomPageState {
  final Object error;

  const RoomPageErrorState({required this.error});
  @override
  List<Object> get props => [error];
}
