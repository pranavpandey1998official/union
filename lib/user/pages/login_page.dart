import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uniun/common/locator.dart';
import 'package:uniun/core/bloc/user/user_bloc.dart';
import 'package:uniun/user/bloc/login_cubit.dart';
import 'package:uniun/user/bloc/login_state.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

 @override
  Widget build(BuildContext context) {
    return BlocProvider(
    create: (context) => getIt<LoginCubit>(), 
    child: Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          print(state);
          if(state.status == LoginStatus.success) {
            context.read<UserBloc>().add(UserSetUserEvent(authUser: state.authUserEntity!));
            context.go('/user');
          }
        }, 
        builder: (context, state) =>  Form(
        key: state.formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                onChanged: (email) => context.read<LoginCubit>().updateEmail(email),
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
                validator: (val) {
                  return context.read<LoginCubit>().validateEmail(val);
                }
              ),
              TextFormField(
                onChanged: (password) => context.read<LoginCubit>().updatePassword(password),
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                validator: (val) {
                  return context.read<LoginCubit>().validatePassword(val);
                }
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if(state.formKey.currentState!.validate()) {
                    context.read<LoginCubit>().login();
                  }
                },
                child: Text('Login'),
              ),
               const SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () => context.go('/user/signup'),
                child: RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: 'Don\'t have an account? ',
                      style: TextStyle(
                        color: Colors.grey,
                      )),
                  TextSpan(
                      text: 'Sign up',
                      style: TextStyle(
                        color: Colors.white,
                      ))
                ])),
              )),
              if(state.errorMessage != null) Text(state.errorMessage!, style: TextStyle(color: Colors.red),)
            ],
          ),
        ),
      ),
    ))
    );
  }
}