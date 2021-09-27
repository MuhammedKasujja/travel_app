// ignore_for_file: require_trailing_commas
// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// @dart=2.9

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/blocs/blocs.dart';
import 'package:travel_app/util/app.utils.dart';
import 'package:travel_app/widgets/custom.button.dart';
import 'package:travel_app/widgets/widget.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

/// Entrypoint example for registering via Email/Password.
class RegisterPage extends StatefulWidget {
  /// The page title.
  final String title = 'Registration';

  @override
  State<StatefulWidget> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _success;
  String _userEmail = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CustomTextfield(
                      controller: _emailController,
                      label: 'Email',
                    ),
                    CustomPasswordfield(
                      controller: _passwordController,
                      label: 'Password',
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(_success == null
                          ? ''
                          : (_success
                              ? 'Successfully registered $_userEmail'
                              : 'Registration failed')),
                    )
                  ],
                ),
              )),
          BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is Authenticated) {
                AppUtils.showAlert(context, message: 'Registered successfully');
                Navigator.pop(context);
              }
              if (state is AuthError) {
                AppUtils.showAlert(context, message: state.message);
              }
            },
            builder: (context, state) {
              return CustomButton(
                text: 'Register',
                onPressed: () async {
                  if (_formKey.currentState.validate()) {
                    BlocProvider.of<AuthBloc>(context).add(Register(
                        email: _emailController.text,
                        password: _passwordController.text));
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
