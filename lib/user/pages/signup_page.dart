import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uniun/common/locator.dart';
import 'package:uniun/core/bloc/user/user_bloc.dart';
import 'package:uniun/user/bloc/login_cubit.dart';
import 'package:uniun/user/bloc/login_state.dart';
import 'package:uniun/user/bloc/signup_cubit.dart';
import 'package:uniun/user/bloc/signup_state.dart';


class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

 @override
  Widget build(BuildContext context) {
    return BlocProvider(
    create: (context) => getIt<SignUpCubit>(), 
    child: Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
      ),
      body: BlocConsumer<SignUpCubit, SignUpState>( 
        listener: (context, state) {
          if(state.status == SignUpStatus.success) {
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
                onChanged: (email) => context.read<SignUpCubit>().updateEmail(email),
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
                validator: (val) {
                  return context.read<SignUpCubit>().validateName(val);
                }
              ),
              TextFormField(
                onChanged: (password) => context.read<SignUpCubit>().updatePassword(password),
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
                validator: (val) {
                  return context.read<SignUpCubit>().validatePassword(val);
                }
              ),
              TextFormField(
                onChanged: (password) => context.read<SignUpCubit>().updateConfirmPassword(password),
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Confirm Password',
                ),
                validator: (val) {
                  return context.read<SignUpCubit>().validateConfirmPassword(val);
                }
              ),
              TextFormField(
                onChanged: (password) => context.read<SignUpCubit>().updateUsername(password),
                decoration: const InputDecoration(
                  labelText: 'Username',
                ),
                validator: (val) {
                  return context.read<SignUpCubit>().validateUsername(val);
                }
              ),
              TextFormField(
                onChanged: (password) => context.read<SignUpCubit>().updateName(password),
                decoration: const InputDecoration(
                  labelText: 'Name',
                ),
                validator: (val) {
                  return context.read<SignUpCubit>().validateName(val);
                }
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if(state.formKey.currentState!.validate()) {
                    context.read<SignUpCubit>().signUp();
                  }
                },
                child: Text('Signup'),
              ),
               const SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () => context.go('/user/login'),
                child: RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: 'Already have an account? ',
                      style: TextStyle(
                        color: Colors.grey,
                      )),
                  TextSpan(
                      text: 'Login',
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