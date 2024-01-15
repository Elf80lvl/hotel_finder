import 'package:app_test_vacancy/models/booking_info_model.dart';
import 'package:app_test_vacancy/repositories/hotel_repo.dart';
import 'package:app_test_vacancy/service/validator.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'booking_page_event.dart';
part 'booking_page_state.dart';

class BookingPageBloc extends Bloc<BookingPageEvent, BookingPageState> {
  BookingPageBloc() : super(BookingPageLoadingState()) {
    String phone = '';
    String email = '';
    bool isPhoneValid = true;
    bool isEmailValid = true;
    late BookingInfoModel data;

    on<BookingPageGetBookingInfoEvent>((event, emit) async {
      try {
        emit(BookingPageLoadingState());
        data = await HotelRepo.getBookingInfo();
        emit(BookingPageLoadedState(
          data: data,
          isEmailValid: isEmailValid,
          isPhoneValid: isPhoneValid,
        ));
      } catch (e) {
        print(e);
        emit(BookingPageErrorState(error: e));
      }
    });

    //
    on<BookingPageUpdatePhoneEvent>((event, emit) {
      phone = event.phone;
      emit(BookingPageLoadedState(
        data: data,
        isEmailValid: isEmailValid,
        isPhoneValid: isPhoneValid,
      ));
    });

    on<BookingPageUpdateEmailEvent>((event, emit) {
      email = event.email;
      emit(BookingPageLoadedState(
        data: data,
        isEmailValid: isEmailValid,
        isPhoneValid: isPhoneValid,
      ));
    });

    //
    on<BookingPageOnSubmitEvent>((event, emit) {
      isPhoneValid = Validator.validateTextFieldText(phone);
      isEmailValid = Validator.validateEmail(email);
      // print('email from bloc: $email');
      if (isPhoneValid && isEmailValid) {
        emit(BookinPageSuccesState());
        emit(BookingPageLoadedState(
          data: data,
          isEmailValid: isEmailValid,
          isPhoneValid: isPhoneValid,
        ));
      } else {
        emit(BookingPageLoadedState(
          data: data,
          isEmailValid: isEmailValid,
          isPhoneValid: isPhoneValid,
        ));
      }
    });
  }
}
