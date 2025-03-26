

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uniun/core/bloc/user/user_bloc.dart';
import 'package:uniun/user/pages/login_page.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> with AutomaticKeepAliveClientMixin {
  final List<bool> selectedUserOption = [true, false];

  @override
  Widget build(BuildContext context) {
    super.build(context);

    UserState userState = context.read<UserBloc>().state;
    

    return MultiBlocListener(
      listeners: [
        BlocListener<UserBloc, UserState>(
          listener: (context, state) {
            setState(() => userState = state);
          },
        ),
      ],
      child: (userState.isLoggedIn && userState.status == UserStatus.success && userState.user != null)
          // ? UserPage(
          //     userId: accountState.personView!.person.id,
          //     isAccountUser: true,
          //     selectedUserOption: selectedUserOption,
          //     savedToggle: savedToggle,
          //   )
          ? Center(child: Text('UserPage')) : Center(child: Text('Something went trriblly wrong')),
    );
  }

  @override
  bool get wantKeepAlive => true;
}