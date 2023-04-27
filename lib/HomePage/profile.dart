import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color.fromARGB(255, 83, 69, 164),
            const Color.fromARGB(255, 66, 53, 165).withOpacity(.8),
            const Color.fromARGB(255, 75, 53, 165).withOpacity(.6),
            const Color.fromARGB(255, 121, 112, 159).withOpacity(.4),
            const Color.fromARGB(255, 70, 53, 165).withOpacity(.2),
            const Color(0xFF6F35A5).withOpacity(.1),
            const Color(0xFF6F35A5).withOpacity(.05),
            const Color(0xFF6F35A5).withOpacity(.025),
          ],
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              tooltip: 'Menu',
              onPressed: () {},
            ),
            centerTitle: true,
            title: Text(
              'Profile',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: Colors.white),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    LineAwesomeIcons.moon,
                    color: Colors.white,
                  ))
            ],
            elevation: 0,
          )),
    );
  }
}
