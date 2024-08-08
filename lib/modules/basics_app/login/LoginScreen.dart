import 'package:flutter/material.dart';

import '../../../shared/components/components.dart';

 class LoginScreen extends StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,

      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Login',

                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  defaultTextFormField(
                      border: const OutlineInputBorder(),
                      controller:emailcontroller ,
                      label: 'Email Address',
                      type: TextInputType.emailAddress,
                      validate: (String value){
                        if (value.isEmpty) {
                          ('email must be not empty');
                        }
                        return ;
                      },
                      onChange:(){},
                      onSubmit: (){},
                      prefix: Icons.email,
                      suffix: obscure? Icons.visibility:Icons.visibility_off ,
                      obscureText: obscure,
                      suffixPressed:() {
                        setState(() {
                          obscure =!obscure;
                        });
                      },
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    controller: passwordcontroller,
                    validator: ( value) {
                      if (value!.isEmpty) {
                        return('password must be not empty');
                      }
                      return null;
                    },
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (value) {
                      print(value);
                    },
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye,
                      ),
                      labelText: "Password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                 /* Container(
                   width: double.infinity,
                   color: Colors.green,
                   child: MaterialButton(
                     onPressed: (){
                         if(formKey.currentState!.validate()){
                           print(emailcontroller.text);
                           print(passwordcontroller.text);

                         }
                     },
                     child: const Text('LOGIN',
                     style: TextStyle(fontSize:25,
                     color: Colors.white
                     ),
                     ),
                   ),
                 ),*/
                  TextFormField(
                    obscureText: obscure,
                    validator: (value) {
                      if(value!.isEmpty){
                        return ('method must be not empty');
                      }
                      return null;
                    },
                    decoration:  InputDecoration(
                      label: const Text('method') ,
                      border: const OutlineInputBorder(),
                      suffixIcon: obscure ? IconButton(
                          onPressed: ()
                          {
                            setState(() {
                              obscure =!obscure;
                            });
                          },
                          icon:const Icon(Icons.visibility_off) ): IconButton(
                          onPressed: ()
                          {
                            setState(() {
                              obscure =!obscure;
                            });
                          },
                          icon:const Icon(Icons.visibility) ) ,

                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),



                 Container(
                   width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors. teal,
                    ),
                   child: MaterialButton(
                        onPressed: (){},
                        child: const Text('LOGIN',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),),

                   ),
                 ),
                 MaterialButton(onPressed:  (){

                 }),



                 // defaultButton(
                 //    text: 'login ',
                 //    function: () {
                 //      if(formKey.currentState!.validate()){
                 //        print(emailcontroller.text);
                 //        print(passwordcontroller.text);
                 //         }
                 //      },
                 //    radius: 30,
                 //    background: Colors.green,
                 //  ),
                  const SizedBox(
                    height: 10.0,
                  ),

                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have an account? ',
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Register Now',
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
