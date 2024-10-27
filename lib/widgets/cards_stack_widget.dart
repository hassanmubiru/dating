import 'package:flutter/material.dart';
import 'package:juicedates/model/profile.dart';
import 'package:juicedates/widgets/drag_widget.dart';

class CardsStackWidget extends StatefulWidget {
  const CardsStackWidget({super.key});

  @override
  State<CardsStackWidget> createState() => _CardsStackWidgetState();


}

class _CardsStackWidgetState extends State<CardsStackWidget> {

  List<Profile> dragabbleItems = [
    Profile(
        name: 'Joan',
        distance: '10 miles away',
        imageAsset: 'assets/images/girl.jpg'),
    Profile(
        name: 'Kent Hassan',
        distance: '10 miles away',
        imageAsset: 'assets/images/billy.jpg'),
    Profile(
        name: 'Jacob Error',
        distance: '10 miles away',
        imageAsset: 'assets/images/hs.jpg'),
    Profile(
        name: 'Liz',
        distance: '10 miles away',
        imageAsset: 'assets/images/ruth.jpg'),
    Profile(
        name: 'Rohini',
        distance: '10 miles away',
        imageAsset: 'assets/images/profile.jpg'),
  ];


  ValueNotifier<Swipe> swipeNotifier = ValueNotifier(Swipe.none);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: ValueListenableBuilder(
            valueListenable: swipeNotifier,
            builder: (context, swipe, _) => Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: List.generate(dragabbleItems.length, (index) {
                return DragWidget(
                  profile: dragabbleItems[index],
                  index: index,
                  swipeNotifier: swipeNotifier,
                );
              }),
            ),
          ),
        ),
        Positioned(
          left: 0,
          child: DragTarget<int>(
            builder: (
              BuildContext context,
              List<dynamic> accepted,
              List<dynamic> rejected,
            ) {
              return IgnorePointer(
                child: Container(
                  height: 700.0,
                  width: 80.0,
                  color: Colors.transparent,
                ),
              );
            },
            onAcceptWithDetails: (DragTargetDetails<int> details) {
              setState(() {
                dragabbleItems.removeAt(details.data);
              });
            },
          ),
        ),
        Positioned(
          right: 0,
          child: DragTarget<int>(
            builder: (
              BuildContext context,
              List<dynamic> accepted,
              List<dynamic> rejected,
            ) {
              return IgnorePointer(
                child: Container(
                  height: 700.0,
                  width: 80.0,
                  color: Colors.transparent,
                ),
              );
            },
            onAcceptWithDetails: (DragTargetDetails<int> details) {
              setState(() {
                dragabbleItems.removeAt(details.data);
              });
            },
          ),
        ),
      ],
    );
  }
}
// enum Swipe { left, right, none }