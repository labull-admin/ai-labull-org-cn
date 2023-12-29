import 'package:flutter/material.dart';
import 'package:ai.labull.org.cn/models/user/user.dart';
import '../blocs/bloc_exports.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  late String _name = "";
  late String _password = "";
  bool _isLoginButtonEnabled = false;
  void _showAuthMessage(AuthState state) {
    if (state is AuthStateLoginFailure) {
      SnackBar snackBar = SnackBar(
        content: Text(state.error!),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('谢小湖 测试版'),
      ),
      body: BlocConsumer<AuthBloc, AuthState>(
        buildWhen: (previousState, state) {
          return state is AuthStateLoginFailure;
        },
        listener: (context, state) {
          _showAuthMessage(state);
        },
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.all(20),
            child: Form(
              // key: scaffoldKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(labelText: '用户名'),
                    autofocus: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        _name = value;
                        _isLoginButtonEnabled = _password.isNotEmpty;
                      });
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: '密码'),
                    // obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        _password = value;
                        _isLoginButtonEnabled = _name.isNotEmpty;
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _isLoginButtonEnabled
                        ? () {
                            User user = User(name: _name, password: _password);
                            BlocProvider.of<AuthBloc>(context)
                                .add(Login(user: user));
                          }
                        : null,
                    child: const Text('Login 登陆'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
