import 'package:ai.labull.org.cn/screens/gallery_screen/gallery_screen.dart';
import 'package:ai.labull.org.cn/screens/tasks_screen/tasks_selection_screen.dart';
import 'package:flutter/material.dart';
import 'package:ai.labull.org.cn/blocs/bloc_exports.dart';
import 'package:ai.labull.org.cn/screens/login_screen.dart';
import 'package:ai.labull.org.cn/screens/setting_screen/setting_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Directionality(
          textDirection: TextDirection.ltr,
          child: Scaffold(
            body: state is AuthStateLogedIn == false
                ? const LoginScreen()
                : Scaffold(
                    body: IndexedStack(
                      index: _selectedIndex,
                      children: const [
                        TasksSelectionScreen(),
                        GalleryScreen(),
                        SettingScreen(),
                      ],
                    ),
                    bottomNavigationBar: BottomNavigationBar(
                      items: const <BottomNavigationBarItem>[
                        BottomNavigationBarItem(
                          icon: Icon(Icons.attractions_sharp),
                          label: '游乐园',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.image_rounded),
                          label: '相册',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.settings),
                          label: '设置',
                        ),
                      ],
                      currentIndex: _selectedIndex,
                      onTap: (index) {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                    ),
                  ),
          ),
        );
      },
    );
  }
}
