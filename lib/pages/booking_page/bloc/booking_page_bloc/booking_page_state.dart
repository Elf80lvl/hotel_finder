part of 'booking_page_bloc.dart';

sealed class BookingPageState extends Equatable {
  const BookingPageState();

  @override
  List<Object> get props => [];
}

final class BookingPageLoadingState extends BookingPageState {}

final class BookingPageLoadedState extends BookingPageState {
  final BookingInfoModel? data;
  final bool isPhoneValid;
  final bool isEmailValid;

  const BookingPageLoadedState({
    required this.isPhoneValid,
    required this.isEmailValid,
    this.data,
  });
  @override
  List<Object> get props => [isPhoneValid, isEmailValid];
}

final class BookingPageErrorState extends BookingPageState {
  final Object error;

  const BookingPageErrorState({required this.error});
  @override
  List<Object> get props => [error];
}

final class BookinPageSuccesState extends BookingPageState {}
