part of 'booking_page_bloc.dart';

sealed class BookingPageEvent extends Equatable {
  const BookingPageEvent();

  @override
  List<Object> get props => [];
}

final class BookingPageGetBookingInfoEvent extends BookingPageEvent {}

final class BookingPageOnSubmitEvent extends BookingPageEvent {}

final class BookingPageUpdatePhoneEvent extends BookingPageEvent {
  final String phone;

  const BookingPageUpdatePhoneEvent({required this.phone});
  @override
  List<Object> get props => [phone];
}

final class BookingPageUpdateEmailEvent extends BookingPageEvent {
  final String email;
  const BookingPageUpdateEmailEvent({required this.email});
  @override
  List<Object> get props => [email];
}
