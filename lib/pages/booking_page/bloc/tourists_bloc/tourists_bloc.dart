import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'tourists_event.dart';
part 'tourists_state.dart';

class TouristData {
  String name;
  String surname;
  String dateOfBirth;
  String citizenship;
  String passNum;
  String passExpDate;

  TouristData({
    required this.name,
    required this.surname,
    required this.citizenship,
    required this.dateOfBirth,
    required this.passExpDate,
    required this.passNum,
  });
}

List<TouristData> touristsData = [
  TouristData(
      name: '',
      surname: '',
      dateOfBirth: '',
      citizenship: '',
      passExpDate: '',
      passNum: '')
];

List names = [''];
List surnames = [''];
int touristsCounter = 1;

// Map<String, dynamic> tourist = {
//   'id': '0',
//   'name': '',
//   'surname': '',
// };

class TouristsBloc extends Bloc<TouristsEvent, TouristsState> {
  TouristsBloc()
      : super(TouristsState(
          touristsCounter: touristsCounter,
          touristsData: touristsData,
          names: names,
          surnames: surnames,
        )) {
    //
    on<TouristsAddEvent>((event, emit) {
      if (touristsCounter < 11) {
        touristsCounter++;

        touristsData.add(
          TouristData(
              name: '',
              surname: '',
              dateOfBirth: '',
              citizenship: '',
              passExpDate: '',
              passNum: ''),
        );

        touristsData.forEach((element) {
          names.add(element.name);
          surnames.add(element.surname);
        });
      }
      emit(TouristsState(
        touristsData: touristsData,
        touristsCounter: touristsCounter,
        names: names,
        surnames: surnames,
      ));
    });
    //
    on<TouristUpdateNameEvent>(
      (event, emit) {
        touristsData[event.index].name = event.name;
        print(touristsData[event.index].name);
        emit(TouristsState(
          touristsData: touristsData,
          touristsCounter: touristsCounter,
          names: names,
          surnames: surnames,
        ));
      },
    );
    //
    on<TouristUpdateSurnameEvent>(
      (event, emit) {
        touristsData[event.index].surname = event.surname;
        print(touristsData[event.index].surname);
        emit(TouristsState(
            touristsData: touristsData,
            touristsCounter: touristsCounter,
            names: names,
            surnames: surnames));
      },
    );
    //*on submit
    on<TouristsOnSubmitEvent>(
      (event, emit) {
        touristsData.forEach((element) {
          names.add(element.name);
          surnames.add(element.surname);
        });

        emit(TouristsState(
            touristsData: touristsData,
            touristsCounter: touristsCounter,
            names: names,
            surnames: surnames));

        // touristsData.forEach((element) {
        //   print('name: ${element.name}');
        //   print('surname: ${element.surname}');
        // });
      },
    );
  }
}
