import 'package:flutter/material.dart';
import 'package:flutter_repair_duniya/commons/chip_selelction_card.dart';
import 'package:flutter_repair_duniya/commons/my_appbar.dart';
import 'package:flutter_repair_duniya/commons/my_btn.dart';
import 'package:flutter_repair_duniya/contoller/pg_duniya_contoller.dart';
import 'package:flutter_repair_duniya/screens/stays_duniya/widgets/card_booking_modes_selection.dart';
import 'package:flutter_repair_duniya/screens/stays_duniya/widgets/card_city_search.dart';
import 'package:flutter_repair_duniya/screens/stays_duniya/widgets/card_lendmark_search.dart';
import 'package:flutter_repair_duniya/utils/app_colors.dart';
import 'package:get/get.dart';

class PgSuniyaFormScreen extends StatefulWidget {
  const PgSuniyaFormScreen({super.key});

  @override
  State<PgSuniyaFormScreen> createState() => _PgSuniyaFormScreenState();
}

class _PgSuniyaFormScreenState extends State<PgSuniyaFormScreen> {
  PgDuniyaContoller pgDuniyaContoller = Get.find<PgDuniyaContoller>();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const MyAppBar(
                showBack: true,
                title: 'PG Duniya',
                hideNotification: true,
              ),
              SizedBox(
                height: 24,
              ),
              GetX<PgDuniyaContoller>(
                builder: (controller) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ChipSelelctionCard(
                        title: 'Male',
                        isSelected: controller.gender.value == Gender.male,
                        onSelect: () => controller.changeGander(Gender.male),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      ChipSelelctionCard(
                          title: 'Female',
                          isSelected: controller.gender.value == Gender.female,
                          onSelect: () =>
                              controller.changeGander(Gender.female)),
                      const SizedBox(
                        width: 20,
                      ),
                      ChipSelelctionCard(
                          title: 'Other',
                          isSelected: controller.gender.value == Gender.other,
                          onSelect: () =>
                              controller.changeGander(Gender.other)),
                    ],
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: CardCitySearch(),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: CardLendMarkSearch(),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.my_location_outlined,
                        color: colorTextBlack,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Use My current location',
                        style: TextStyle(color: colorTextBlack, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: const Row(
                  children: [
                    Text(
                      'Book Now',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              GetX<PgDuniyaContoller>(
                builder: (controller) {
                  return Wrap(
                    children: [
                      ChipSelelctionCard(
                        title: controller.professionList[1],
                        isSelected: controller.selectedProfession.value == 1,
                        onSelect: () => controller.changeProfession(1),
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      ChipSelelctionCard(
                        title: controller.professionList[2],
                        isSelected: controller.selectedProfession.value == 2,
                        onSelect: () => controller.changeProfession(2),
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      ChipSelelctionCard(
                        title: controller.professionList[3],
                        isSelected: controller.selectedProfession.value == 3,
                        onSelect: () => controller.changeProfession(3),
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      ChipSelelctionCard(
                        title: controller.professionList[4],
                        isSelected: controller.selectedProfession.value == 4,
                        onSelect: () => controller.changeProfession(4),
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      ChipSelelctionCard(
                        title: controller.professionList[5],
                        isSelected: controller.selectedProfession.value == 5,
                        onSelect: () => controller.changeProfession(5),
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: const Row(
                  children: [
                    Text(
                      'Book Now',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  children: [
                    Text(
                      'Select your mode for booking Paying guest.',
                      style: TextStyle(
                        fontSize: 16,
                        color: colorTextGray,
                      ),
                    ),
                  ],
                ),
              ),
              GetX<PgDuniyaContoller>(
                builder: (controller) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        CardBookingModesSelection(
                          title: controller.bookingModeList[1],
                          isSelected: controller.selectedBookingMode.value == 1,
                          onTap: () {
                            controller.changeBookingModel(1);
                          },
                        ),
                        CardBookingModesSelection(
                          title: controller.bookingModeList[2],
                          isSelected: controller.selectedBookingMode.value == 2,
                          onTap: () {
                            controller.changeBookingModel(2);
                          },
                        ),
                        CardBookingModesSelection(
                          title: controller.bookingModeList[3],
                          isSelected: controller.selectedBookingMode.value == 3,
                          onTap: () {
                            controller.changeBookingModel(3);
                          },
                        ),
                        CardBookingModesSelection(
                          title: controller.bookingModeList[4],
                          isSelected: controller.selectedBookingMode.value == 4,
                          onTap: () {
                            controller.changeBookingModel(4);
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: GetX<PgDuniyaContoller>(
                  builder: (controller) => MyBtn(
                    title: 'Proceed',
                    isEnabled: controller.isBtnEnable.value,
                    onTap: () {
                      controller.changeBtnState();
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
