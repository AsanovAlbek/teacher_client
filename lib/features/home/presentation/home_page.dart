import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:teacher_client/core/resources/images.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox.square(
                        dimension: 100,
                        child: CircleAvatar(child: AppImages.person)),
                  )
                ],
              ),
            ),
          ),
          const Expanded(
              child: AutoRouter())
        ],
      ),
    );
  }
}
