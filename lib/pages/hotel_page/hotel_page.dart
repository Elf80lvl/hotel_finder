import 'package:app_test_vacancy/pages/hotel_page/bloc/hotel_page_bloc.dart';
import 'package:app_test_vacancy/pages/hotel_page/hotel_page_loaded.dart';
import 'package:app_test_vacancy/widgets_common/default_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HotelPage extends StatelessWidget {
  const HotelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => HotelPageBloc()..add(HotelPageGetInfoEvent()),
        child: BlocBuilder<HotelPageBloc, HotelPageState>(
          builder: (context, state) {
            if (state is HotelPageLoadingState) {
              return const DefaultLoadingWidget();
            }
            if (state is HotelPageLoadedState) {
              return RefreshIndicator(
                onRefresh: () async {
                  BlocProvider.of<HotelPageBloc>(context)
                      .add(HotelPageGetInfoEvent());
                },
                child: HotelPageLoaded(
                  data: state.data,
                ),
              );
            }
            if (state is HotelPageErrorState) {
              return Center(
                child: Text(state.error.toString()),
              );
            }
            //TODO
            return Center(
              child: Text('Unhandled exception'),
            );
          },
        ),
      ),
    );
  }
}
