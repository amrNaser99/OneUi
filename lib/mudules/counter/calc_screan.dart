import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oneui/mudules/counter/cubit/cubit.dart';
import 'package:oneui/mudules/counter/cubit/states.dart';

class CounterScrean extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit,CounterStates>(
        listener: (context, state) {
          if (state is CounterPlusState)
          {
            state.counter; 
            print('plus state');
          }

          if (state is CounterMinusState)
          {
            print('minus state');
          }
        },
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            title:
              const Text(
                'Calculator Screan',
            ),
            centerTitle: true ,
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: ()
                  {
                    CounterCubit.get(context).minus();
                  },
                  child:
                  const Text(
                    'MINUS',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),


                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  child: Text(
                    '${CounterCubit.get(context).counter}',
                    style: const TextStyle(
                      fontSize:50.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: ()
                  {
                    CounterCubit.get(context).plus();
                  },
                  child:
                  const Text(
                    'PlUS',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),


                ),
              ],
            ),
          ),


        ),

      ),
    );
  }
}
