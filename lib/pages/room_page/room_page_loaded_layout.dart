import 'package:app_test_vacancy/const/const.dart';
import 'package:app_test_vacancy/models/room_info_model.dart';
import 'package:app_test_vacancy/pages/room_page/widgets/room_widget.dart';
import 'package:app_test_vacancy/widgets_common/appbar_custom_widget.dart';
import 'package:flutter/material.dart';

class RoomPageLoadedLayout extends StatelessWidget {
  final String hotelName;
  final RoomInfoModel data;
  const RoomPageLoadedLayout(
      {super.key, required this.data, required this.hotelName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kSizeAppBarHeight),
        child: AppBarCustomWidget(
          title: hotelName,
          isBackArrow: true,
        ),
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            Column(
              children: List.generate(
                data.rooms.length,
                (index) => RoomWidget(
                  name: data.rooms[index].name,
                  price: data.rooms[index].price.toDouble(),
                  pricePer: data.rooms[index].pricePer,
                  peculiarities: data.rooms[index].peculiarities,
                  imageUrls: data.rooms[index].imageUrls,
                ),
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
