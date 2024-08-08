import 'package:flutter/material.dart';

//reusable component

Widget defaultButton({
  width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 0.0,
  double height = 50,
  required Function() function,
  required String text,
}) => Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: background,
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );

//__________________________________________________

Widget defaultTextFormField({
  required TextEditingController controller,
  required String label,
  required InputBorder border,
  required TextInputType type,
  required Function onSubmit,
    Function()? onChange,
   Function(String value)?  validate,
  bool obscureText = false,
  required IconData prefix,
  IconData? suffix,
  Function()? suffixPressed,
}) =>
    TextFormField(
      controller: controller,
      validator: validate!('password must be not empty'),
      onFieldSubmitted: onSubmit(),
      obscureText: obscureText,
      onChanged: onChange!(),
      keyboardType: type,
      decoration: InputDecoration(
        border: border,
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix!= null ? IconButton(
          onPressed: suffixPressed,
          icon: Icon(
            suffix,
          ),
        ) :null,
        labelText: label,
      ),
    );

//___________________________________________________
 Widget defaulTextFormField({

  required String label ,
   bool obscure =false,
   IconData? suffux ,
}
)=>TextFormField(
   obscureText: obscure,
   validator: (value) {
     if(value!.isEmpty){
       return ('method must be not empty');
     }
     return null;
   },
   decoration: const InputDecoration(
     border:  OutlineInputBorder(),
    // suffixIcon: suffux!=null ? Icon(Icons.visibility)  : null ,

   ),
 );
