import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uniun/common/locator.dart';
import 'package:uniun/community/bloc/craete_community_cubit.dart';
import 'package:uniun/community/bloc/create_community_state.dart';
import 'package:uniun/core/bloc/user/user_bloc.dart';
import 'package:uniun/user/bloc/login_cubit.dart';
import 'package:uniun/user/bloc/login_state.dart';


class CreateCommunityPage extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return BlocProvider(
    create: (context) => getIt<CreateCommunityCubit>(), 
    child: Scaffold(
      appBar: AppBar(
        title: Text('Create Community'),
      ),
      body: BlocConsumer<CreateCommunityCubit, CreateCommunityState>(
        listener: (context, state) {
          if(state.status == CreateCommunityStatus.success) {
            context.go('/create/communityCreateSuccess/${state.communityEntity?.name}');
            context.read<CreateCommunityCubit>().resetForm();
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
                onChanged: (email) => context.read<CreateCommunityCubit>().updateName(email),
                decoration: InputDecoration(
                  labelText: 'Name',
                ),
                validator: (val) {
                  return context.read<CreateCommunityCubit>().validateName(val);
                }
              ),
              TextFormField(
                onChanged: (password) => context.read<CreateCommunityCubit>().updateAbout(password),
                decoration: InputDecoration(
                  labelText: 'About',
                ),
                minLines: 5,
                maxLines: null,
                validator: (val) {
                  return context.read<CreateCommunityCubit>().validateAbout(val);
                }
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if(state.formKey.currentState!.validate()) {
                    context.read<CreateCommunityCubit>().login();
                  }
                },
                child: Text('Create Community'),
              ),
               const SizedBox(
              height: 40,
            ),
              if(state.errorMessage != null) Text(state.errorMessage!, style: TextStyle(color: Colors.red),)
            ],
          ),
        ),
      ),
    ))
    );
  }
}