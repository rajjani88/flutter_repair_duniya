import 'package:get/get.dart';

enum Gender { male, female, other }

class PgDuniyaContoller extends GetxController {
  final Rx<Gender> _gender = Gender.male.obs;
  Rx<Gender> get gender => _gender;

  List<String> professionList = [
    'non',
    "Student",
    "Working",
    "Non working",
    "Delivery boy",
    'Entrepreneur'
  ];

  final RxInt selectedProfession = 0.obs;

  final List<String> bookingModeList = [
    'non',
    'Single Room',
    'Double sharing',
    'Triple sharing',
    'Multiple sharing'
  ];

  RxInt selectedBookingMode = 0.obs;

  RxBool isBtnEnable = false.obs;

  changeBtnState() {
    if (isBtnEnable.value) {
      isBtnEnable.value = false;
    } else {
      isBtnEnable.value = true;
    }
  }

  changeGander(selectedGender) {
    _gender.value = selectedGender;
    refresh();
  }

  changeProfession(int posion) {
    selectedProfession.value = posion;
    refresh();
  }

  changeBookingModel(int posion) {
    selectedBookingMode.value = posion;
  }
}
