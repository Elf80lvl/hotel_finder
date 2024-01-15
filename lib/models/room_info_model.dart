import 'dart:convert';

class RoomInfoModel {
  final List<Room> rooms;

  RoomInfoModel({
    required this.rooms,
  });

  factory RoomInfoModel.fromRawJson(String str) =>
      RoomInfoModel.fromJson(json.decode(str));

  factory RoomInfoModel.fromJson(Map<String, dynamic> json) => RoomInfoModel(
        rooms: List<Room>.from(json["rooms"].map((x) => Room.fromJson(x))),
      );
}

class Room {
  final int id;
  final String name;
  final int price;
  final String pricePer;
  final List<String> peculiarities;
  final List<String> imageUrls;

  Room({
    required this.id,
    required this.name,
    required this.price,
    required this.pricePer,
    required this.peculiarities,
    required this.imageUrls,
  });

  factory Room.fromRawJson(String str) => Room.fromJson(json.decode(str));

  factory Room.fromJson(Map<String, dynamic> json) => Room(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        pricePer: json["price_per"],
        peculiarities: List<String>.from(json["peculiarities"].map((x) => x)),
        imageUrls: List<String>.from(json["image_urls"].map((x) => x)),
      );
}
