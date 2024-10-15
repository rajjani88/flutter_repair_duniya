import 'package:flutter/material.dart';
import 'package:flutter_repair_duniya/commons/my_appbar.dart';

class PgSuniyaFormScreen extends StatefulWidget {
  const PgSuniyaFormScreen({super.key});

  @override
  State<PgSuniyaFormScreen> createState() => _PgSuniyaFormScreenState();
}

class _PgSuniyaFormScreenState extends State<PgSuniyaFormScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const MyAppBar(
              showBack: true,
              title: 'PG Duniya',
              hideNotification: true,
            ),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
