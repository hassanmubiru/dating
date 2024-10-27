import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final double coverHeight = 280;
  final double profileHeight = 144;
  @override
  Widget build(BuildContext context) {
  final top = coverHeight - profileHeight / 2;
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          buildCoverImage(),
          Positioned(
            top: top,
            child: buildProfileImage(),
          ),
        ],
      ),
    );
  }

  Widget buildCoverImage() => Container(
    color: Colors.grey,
    child:Image.asset(
      'assets/images/profile.jpg',
      width: double.infinity,
      height: coverHeight,
      fit: BoxFit.cover,
    )
  );

  Widget buildProfileImage() =>
  CircleAvatar(
    backgroundColor: Colors.grey.shade800,
    backgroundImage: const AssetImage(
      'assets/images/ruth.jpg',
    ),

  );
}