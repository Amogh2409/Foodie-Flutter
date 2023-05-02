import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

String? getUserEmail(){
  final User? user = _auth.currentUser;
  if(user != null){
    return user.email;
  }
  return null;
}

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
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Column(
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.asset(
                      'assets/profile.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Amogh Saxena',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(color: Colors.grey.shade800, fontSize: 24),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  getUserEmail().toString(),
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(color: Colors.grey.shade800, fontSize: 16),
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF6F35A5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Edit Profile',
                      style: Theme.of(context)
                          .textTheme
                          .button
                          ?.copyWith(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Divider(
                  color: Colors.grey.shade400,
                  thickness: 1,
                ),
                const SizedBox(
                  height: 25,
                ),
                ProfileMenuWidget(
                  text: 'Settings',
                  icon: LineAwesomeIcons.cog,
                  press: () {},
                ),
                ProfileMenuWidget(
                  text: 'Billing Details',
                  icon: LineAwesomeIcons.wallet,
                  press: () {},
                ),
                ProfileMenuWidget(
                  text: 'User Management',
                  icon: LineAwesomeIcons.user_check,
                  press: () {},
                ),
                Divider(
                  color: Colors.grey.shade400,
                  thickness: 0.5,
                ),
                const SizedBox(
                  height: 15,
                ),
                ProfileMenuWidget(
                  text: 'Help & Support',
                  icon: LineAwesomeIcons.question_circle,
                  press: () {},
                ),
                ProfileMenuWidget(
                  text: 'Privacy Policy',
                  icon: LineAwesomeIcons.lock,
                  press: () {},
                ),
                ProfileMenuWidget(
                  text: 'Log Out',
                  icon: LineAwesomeIcons.alternate_sign_out,
                  press: () {
                    _auth.signOut();
                    Navigator.pop(context);
                  },
                  endIcon: false,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget(
      {Key? key,
      required this.text,
      required this.icon,
      required this.press,
      this.endIcon = true,
      this.color})
      : super(key: key);

  final String text;
  final IconData icon;
  final VoidCallback press;
  final bool endIcon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      leading: Container(
        width: 40,
        height: 40,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
         color: Colors.grey[100],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          icon,
          color: color ?? Colors.grey.shade800,
          size: 22,
        ),
      ),
      title: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .bodyText2
            ?.copyWith(color: color, fontSize: 18),
      ),
      trailing: endIcon
          ? Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Icon(
              LineAwesomeIcons.angle_right,
              color: Colors.black,
              size: 16,
            ),
          )
          : null
    );
  }
}
