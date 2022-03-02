import 'package:basit/widgets/my-widgets.dart';
import 'package:flutter/material.dart';
import 'package:basit/widgets/custom-text-field.dart';
import 'package:basit/constants.dart';
import 'main-signup.dart';
class SignInForm extends StatefulWidget {
  final GlobalKey<FormState> _globalkey = GlobalKey<FormState>();

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  late String email, password, fullName, dateOfBirth, retypePassword;
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _confirmPassController = TextEditingController();
  final TextEditingController _dateOfBirthController = TextEditingController();

  // final auth = Auth();
  // final store = Store();

  @override
  void dispose() {
    //بتتنفذ لما اطلع من ال page
    _passController.dispose();
    _confirmPassController.dispose();
    _dateOfBirthController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          Form(
            key: widget._globalkey,
            child: ListView(
              shrinkWrap: true,
              children: [
                CustomTextField(
                  validate: (value) {
                    if (value == '') {
                      return 'Email is empty';
                    }
                    return null;
                  },
                  onClick: (value) {
                    fullName = value ?? "";
                  },
                  hint: 'E-mail',
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  validate: (value) {
                    if (value == '') {
                      return 'Full name is empty';
                    }
                    return null;
                  },
                  onClick: (value) {
                    fullName = value ?? "";
                  },
                  hint: 'Password',
                ),
                SizedBox(
                  height: 20,
                ),

              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {},
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                      color: Colors.black26,
                      decoration: TextDecoration.underline),
                ),
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
          SizedBox(height: 20,),
          customButton(context,'Sign in',14.0,2.5),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Dont have an account',style: TextStyle(color: Colors.black26),),
              Text(
                'register?',
                style:
                TextStyle(decoration: TextDecoration.underline,color: kFontColor),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              OutlinedButton(
                child: Text(
                  'Skip',
                  style: TextStyle(color: kFontColor),
                ),
                style: OutlinedButton.styleFrom(
                    side: BorderSide(width: 2, color: kFontColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    )),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => MainSignUp(),
                    ),
                  );
                },
              ),
              SizedBox(width: 20,)
            ],
          )
        ],
      );
  }
}
