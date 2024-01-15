import 'package:app_test_vacancy/pages/booking_page/bloc/booking_page_bloc/booking_page_bloc.dart';
import 'package:app_test_vacancy/pages/booking_page/booking_page_loaded.dart';
import 'package:app_test_vacancy/widgets_common/default_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) =>
            BookingPageBloc()..add(BookingPageGetBookingInfoEvent()),
        child: BlocBuilder<BookingPageBloc, BookingPageState>(
          builder: (context, state) {
            if (state is BookingPageLoadingState) {
              return const DefaultLoadingWidget();
            }

            if (state is BookingPageLoadedState) {
              return BookingPageLoaded(data: state.data!);
            }

            if (state is BookingPageErrorState) {
              return Center(
                child: Text(state.error.toString()),
              );
            }
            return const Center(child: Text('Error'));
          },
        ),
      ),
    );
  }
}
