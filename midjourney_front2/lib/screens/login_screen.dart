import 'package:flutter/material.dart';
import 'package:ai.labull.org.cn/models/user/user.dart';
import '../blocs/bloc_exports.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  late String _name = '';
  late String _password = '';
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
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: scaffoldKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(labelText: '用户名'),
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
                    obscureText: true,
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
                            BlocProvider.of<AuthBloc>(context)
                                .add(
                                Login(username: _name, password: _password));
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
