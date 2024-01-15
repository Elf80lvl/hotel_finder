part of 'hotel_page_bloc.dart';

@immutable
sealed class HotelPageState {}

final class HotelPageLoadingState extends HotelPageState {}

final class HotelPageLoadedState extends HotelPageState {
  final HotelInfoModel data;

  HotelPageLoadedState({required this.data});
}

final class HotelPageErrorState extends HotelPageState {
  final Object? error;

  HotelPageErrorState({this.error});
}
