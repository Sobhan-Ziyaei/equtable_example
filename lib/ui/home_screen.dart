import 'package:equtable_example/bloc/home_bloc.dart';
import 'package:equtable_example/bloc/home_event.dart';
import 'package:equtable_example/bloc/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.read<HomeBloc>().add(ClickEvent());
                },
                child: const Text('click'),
              ),
              BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  if (state is InitialHome) {
                    return const Text('0');
                  } else if (state is UpdatedHome) {
                    print('Update Home');
                    return Text('${state.counter}');
                  }
                  return const Text('error');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
