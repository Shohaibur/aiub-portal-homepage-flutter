import 'package:flutter/material.dart';

class LoginBtn extends StatelessWidget {
  const LoginBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      width: 250,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3.0),
            ),
          ),
        ),
        child: const Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
