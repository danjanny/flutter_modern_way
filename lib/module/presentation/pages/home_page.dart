import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modern_way/module/presentation/manager/user_bloc.dart';
import 'package:flutter_modern_way/module/presentation/manager/user_cubit.dart';
import 'package:flutter_modern_way/module/presentation/manager/user_event.dart';
import 'package:flutter_modern_way/module/presentation/manager/user_state.dart';

import '../../di/injection.dart';
import '../../domain/use_cases/i_user_use_case.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );

    configureDependencies();
    IUserUseCase? userUseCase = getIt<IUserUseCase>();
    return MultiBlocProvider(providers: [
      // BlocProvider(create: (ctx) => UserBloc(userUseCase))
      BlocProvider(create: (ctx) => UserCubit(userUseCase))
    ], child: materialApp);
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Length of users data:',
            ),
            // return Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headlineMedium,
            // );
            // BlocBuilder<UserBloc, UserState>(builder: (context, state) {
            //   if (state is UserLoadedState) {
            //     var usersLength = state.users?.length;
            //     return Text(
            //       '$usersLength',
            //       style: Theme.of(context).textTheme.headlineMedium,
            //     );
            //   } else {
            //     return Container();
            //   }
            // }),
            BlocBuilder<UserCubit, UserState>(builder: (context, state) {
              if (state is UserLoadedState) {
                var usersLength = state.users?.length;
                return Text(
                  '$usersLength',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              } else {
                return Container();
              }
            })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: _incrementCounter,
        // onPressed: _addUserEvent,
        onPressed: _addUserData,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _addUserEvent() {
    BlocProvider.of<UserBloc>(context).add(const AddUserEvent(userId: "1"));
  }

  void _addUserData() {
    context.read<UserCubit>().addUserData();
  }
}
