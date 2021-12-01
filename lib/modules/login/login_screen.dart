import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fproject/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var passController = TextEditingController();

  var emailController = TextEditingController();

  var formkey = GlobalKey<FormState>();

  bool visableController = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                defaultField(label: 'Email',
                    controller: emailController,
                    prefix: Icons.email,
                type: TextInputType.emailAddress,
                  validate: (value){
                  if(value!.isEmpty){
                    return 'email address must not be empty';
                  }
                  }
                ),
                SizedBox(
                  height: 20,
                ),
                defaultField(label: 'Password',
                prefix: Icons.security,
                visable: visableController,
                suffixPressed: (){
                  setState(() {
                    visableController=!visableController;
                  });

                },
                controller: passController,
                type: TextInputType.visiblePassword,
                validate: (value){
                  if(value!.isEmpty){
                    return 'Password must not be empty';
                  }
                },
                suffix: visableController? Icons.remove_red_eye:Icons.visibility_off),
                SizedBox(
                  height: 20,
                ),
                defaultButton(text: 'login',
                function: (){
                  if(formkey.currentState!.validate()){
                    print(emailController.text);
                    print(passController.text);
                    emailController.text='';
                    passController.text='';
                  }
                },
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account?',),
                    TextButton(
                      onPressed: () {},
                      child: Text('Register Now',),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
