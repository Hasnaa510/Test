import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project1/modules/shop_app/login/cubit_login.dart';
import 'package:flutter_project1/modules/shop_app/login/states_login.dart';
import 'package:flutter_project1/shared/components/components.dart';

import '../register/register_screen.dart';

class OnBoardingLogin extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  OnBoardingLogin({super.key});

  @override
  Widget build(BuildContext context){
    return BlocProvider(
      create: (context) => ShopLoginCubit(),
      child: BlocConsumer<ShopLoginCubit, ShopLoginStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Login',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        Text('login now to browse our hot offers',
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: Colors.grey,
                                    )),
                        const SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          controller: emailController,
                          validator: (value) {
                            if (value!.isEmpty)
                            {
                              return 'Please enter your email address';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                            ),
                            label: Text('Email Address'),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: passwordController,
                          onFieldSubmitted: (value) {
                            if (formKey.currentState!.validate())
                            {
                              ShopLoginCubit.get(context).userLogin(

                                  email: emailController.text,
                                  password: passwordController.text
                              );
                            }
                          },
                          validator: ( value) {
                            if (value!.isEmpty) {
                              return 'password must be not empty';
                            }
                            return null;
                          },
                          obscureText: ShopLoginCubit.get(context).isPassword ,
                          decoration:  InputDecoration(
                            prefixIcon:  const Icon(
                              Icons.email,
                            ),
                            suffixIcon: IconButton(
                                onPressed: (){
                                  ShopLoginCubit.get(context).changePasswordVisibility();
                                },
                               icon: ShopLoginCubit.get(context).suffix,
                            ),

                            label: const Text('Password'),
                            border: const OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        defaultButton(
                          function: ()
                          {
                            if (formKey.currentState!.validate())
                            {
                              ShopLoginCubit.get(context).userLogin(
                                  email: emailController.text,
                                  password: passwordController.text
                              );
                            }
                          },
                          text: 'Login',
                          radius: 15,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Don\'t have an account?'),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ShopRegisterScreen()),
                                  );
                                },
                                child: const Text(
                                  'Register Now',
                                  style: TextStyle(fontSize: 20),
                                )),

                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
