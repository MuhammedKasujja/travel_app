import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/blocs/blocs.dart';
import 'package:travel_app/screens/register.dart';
import 'package:travel_app/util/app.utils.dart';
import 'package:travel_app/util/const.dart';
import 'package:travel_app/widgets/widget.dart';

import 'profile.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state is Authenticated) {
            return ProfilePage();
          }
          return SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 100,
                ),
                Text(Constants.appName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    )),
                CustomTextfield(
                  label: 'Email',
                  controller: _emailController,
                ),
                CustomPasswordfield(
                  label: 'Password',
                  controller: _passwordController,
                ),
                BlocConsumer<AuthBloc, AuthState>(
                  listener: (context, state) {
                    if (state is Authenticated) {
                      AppUtils.showAlert(context,
                          message: 'Login successfully');
                      _clear();
                    }
                    if (state is AuthError) {
                      AppUtils.showAlert(context, message: state.message);
                    }
                  },
                  builder: (context, state) {
                    return CustomButton(
                      onPressed: () => BlocProvider.of<AuthBloc>(context).add(
                          Login(
                              _emailController.text, _passwordController.text)),
                      text: 'Login',
                    );
                  },
                ),
                TextButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterPage(),
                        )),
                    child: Text('Register'))
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  _clear() {
    _emailController.clear();
    _passwordController.clear();
  }
}
