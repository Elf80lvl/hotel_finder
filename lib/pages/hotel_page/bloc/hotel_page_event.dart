part of 'hotel_page_bloc.dart';

@immutable
sealed class HotelPageEvent {}

final class HotelPageGetInfoEvent extends HotelPageEvent {}
