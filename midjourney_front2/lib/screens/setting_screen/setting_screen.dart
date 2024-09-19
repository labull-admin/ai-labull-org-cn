import 'package:flutter/material.dart';
import 'package:ai.labull.org.cn/blocs/bloc_exports.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
<<<<<<< Updated upstream:midjourney_front2/lib/screens/setting_screen/setting_screen.dart
=======
  void initState() {
    super.initState();
  }

  @override
>>>>>>> Stashed changes:ai_labull_org_cn/lib/screens/setting_screen/setting_screen.dart
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.person_sharp),
              title: Text(context.read<AuthBloc>().state.user!.name),
            ),
            ListTile(
              leading: const Icon(Icons.key_sharp),
              title: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.visibility),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                onSaved: (value) {},
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  // TODO: Implement updating the user's credentials
                }
              },
              child: const Text('Update Credentials'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                context.read<AuthBloc>().add(const Logout());
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
