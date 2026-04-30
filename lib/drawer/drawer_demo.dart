import 'package:flutter/material.dart';
import 'package:flutter_basics/bottom_navigton_demo/home_demo.dart';
import 'package:flutter_basics/bottom_navigton_demo/profile_demo.dart';
import 'package:flutter_basics/bottom_navigton_demo/setting_demo.dart';
import 'package:flutter_basics/drawer/drawer_option.dart';

class DrawerDemo extends StatefulWidget {
  const DrawerDemo({super.key});

  @override
  State<DrawerDemo> createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  // current index
  int _selectedIndex = 0;

  // function to set current index to the tab tap
  void _onTabTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // list of tab for navigation
  final List<Widget> _tabList = [
    const HomeDemo(),
    const SettingDemo(),
    const ProfileDemo(),
  ];

  // function to navigate to drawer option page
  void navToDrawerOption(BuildContext context) {
    // pop the drawer and then navigato to respective destination
    Navigator.pop(context);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const DrawerOption(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Drawer Demo',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        actions: const [
          Icon(
            Icons.upload,
          ),
        ],
        actionsPadding: const EdgeInsets.only(right: 10),
      ),

      /** Drawer Widget
       * it is panel widget that slid from usually left
       * it is used for use navigation and frequent actions
       */
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 238, 249, 238),
        child: ListView(
          children: [
            // const DrawerHeader(
            //   child: Text(
            //     'Jhon Doe',
            //     maxLines: 1,
            //     overflow: TextOverflow.ellipsis,
            //   ),
            // ),

            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 237, 236, 236),
              ),
              accountName: Text(
                'Jhon Doe',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
              accountEmail: Text(
                'jhondoe@gmail.com',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/img2.jpeg'),
              ),
            ),

            // Home
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.black,
                size: 20,
              ),
              title: const Text(
                'Home',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
              onTap: () => navToDrawerOption(context),
            ),
            const Divider(),

            // contact tap
            ListTile(
              leading: const Icon(
                Icons.call,
                color: Colors.black,
                size: 20,
              ),
              title: const Text(
                'Contact',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
              onTap: () => navToDrawerOption(context),
            ),
            const Divider(),

            // about us
            ListTile(
              leading: const Icon(
                Icons.email,
              ),
              title: const Text(
                'About Us',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
              onTap: () => navToDrawerOption(context),
            ),
            const Divider(),

            // profile
            ListTile(
              leading: const Icon(
                Icons.person_2,
                color: Colors.black,
                size: 20,
              ),
              title: const Text(
                'Profile',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
              onTap: () => navToDrawerOption(context),
            ),
            const Divider(),

            // logout
            ListTile(
              leading: const Icon(
                Icons.logout,
                color: Colors.black,
                size: 20,
              ),
              title: const Text(
                'Logout',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
              onTap: () => _showLogoutDialog(context),
            ),
            const Divider(),
          ],
        ),
      ),

      //body
      body: IndexedStack(
        index: _selectedIndex,
        children: _tabList,
      ),

      // bottom nav bar
      bottomNavigationBar: NavigationBar(
          selectedIndex: _selectedIndex,
          onDestinationSelected: _onTabTap,
          height: 60,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
              selectedIcon: Icon(Icons.home_filled),
            ),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: 'Setting',
              selectedIcon: Icon(Icons.settings_applications),
            ),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: 'Profile',
              selectedIcon: Icon(Icons.person_2_rounded),
            ),
          ]),
    );
  }

  Future<void> _showLogoutDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: const Color.fromARGB(255, 231, 231, 231),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(15),
          ),
          actionsAlignment: MainAxisAlignment.spaceAround,
          title: const Text('Logout'),
          content: const Text('Are you sure you want to Logout!'),
          actions: [
            TextButton(
              onPressed: () {
                debugPrint('Logout Dialog Clicked.');
                Navigator.pop(context);
              },
              child: const Text(
                'No',
                style: TextStyle(color: Colors.red),
              ),
            ),
            TextButton(
              onPressed: () {
                debugPrint('Logout Dialog Clicked.');
                Navigator.pop(context);
              },
              child: const Text(
                'Yes',
                style: TextStyle(color: Colors.green),
              ),
            ),
          ],
        );
      },
    );
  }
}
