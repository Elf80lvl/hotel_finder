import 'package:app_test_vacancy/models/room_info_model.dart';
import 'package:app_test_vacancy/pages/room_page/bloc/room_page_bloc.dart';
import 'package:app_test_vacancy/pages/room_page/room_page_loaded_layout.dart';
import 'package:app_test_vacancy/widgets_common/default_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RoomPage extends StatelessWidget {
  final String? hotelName;
  const RoomPage({super.key, this.hotelName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => RoomPageBloc()..add(RoomPageGetRoomInfoEvent()),
        child: BlocBuilder<RoomPageBloc, RoomPageState>(
          builder: (context, state) {
            if (state is RoomPageLoadingState) {
              return const DefaultLoadingWidget();
            }
            if (state is RoomPageLoadedState) {
              return RoomPageLoadedLayout(
                data: RoomInfoModel(rooms: state.data.rooms),
                hotelName: hotelName ?? '',
              );
            }
            if (state is RoomPageErrorState) {
              return Center(
                child: Text(state.error.toString()),
              );
            }
            return Text('');
          },
        ),
      ),
    );
  }
}
