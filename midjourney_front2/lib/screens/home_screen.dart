import 'package:ai.labull.org.cn/router/app_router.dart';
import 'package:ai.labull.org.cn/router/routes_name.dart';
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
                    appBar: AppBar(
                      title: const Text('谢小湖 测试版'),
                    ),
                    body: IndexedStack(
                      index: _selectedIndex,
                      children: const [
                        TasksSelectionScreen(),
                        SettingScreen(),
                        SettingScreen(),
                      ],
                    ),
                    bottomNavigationBar: BottomNavigationBar(
                      items: const <BottomNavigationBarItem>[
                        BottomNavigationBarItem(
                          icon: Icon(Icons.attractions_sharp),
                          label: 'tasks',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.image_rounded),
                          label: 'gallery',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.settings),
                          label: 'setting',
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
