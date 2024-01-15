import 'package:app_test_vacancy/models/room_info_model.dart';
import 'package:app_test_vacancy/repositories/hotel_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'room_page_event.dart';
part 'room_page_state.dart';

class RoomPageBloc extends Bloc<RoomPageEvent, RoomPageState> {
  RoomPageBloc() : super(RoomPageLoadingState()) {
    on<RoomPageGetRoomInfoEvent>((event, emit) async {
      emit(RoomPageLoadingState());
      try {
        final data = await HotelRepo.getRoomInfo();

        emit(RoomPageLoadedState(data: data));
      } catch (e) {
        emit(RoomPageErrorState(error: e));
      }
    });
  }
}
