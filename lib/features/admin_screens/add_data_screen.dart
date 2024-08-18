import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:g_commerce/features/admin_screens/cubit/admin_cubit.dart';
import 'package:g_commerce/features/admin_screens/cubit/admin_state.dart';

class AddDataScreen extends StatelessWidget {
  const AddDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocConsumer<AdminCubit, AdminState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            var adminCubit = AdminCubit.get(context);
            return state is AdminLoadingState
                ? const Center(child: CircularProgressIndicator())
                : ElevatedButton(
                    onPressed: () {
                      adminCubit.addItem();
                    },
                    child: Text("add"));
          },
        ),
      ),
    );
  }
}
