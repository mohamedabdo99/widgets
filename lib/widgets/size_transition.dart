import 'package:flutter/material.dart';

class SizeTransitionWidget extends StatefulWidget {
  SizeTransitionWidget({super.key});

  @override
  State<SizeTransitionWidget> createState() => _SizeTransitionWidgetState();
}

class _SizeTransitionWidgetState extends State<SizeTransitionWidget>
    with TickerProviderStateMixin {
  late final AnimationController controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 3),
  )..repeat(reverse: true);

  late final Animation<double> animation = CurvedAnimation(
    parent: controller,
    curve: Curves.easeInSine,
  );
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizeTransition(
          sizeFactor: animation,
          axis: Axis.horizontal,
          axisAlignment: -1,
          child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXGX5LVhjLowRGbMOiODtZJ40eZJd193fG8w&usqp=CAU'),
        ),
      ],
    ));
  }
}
