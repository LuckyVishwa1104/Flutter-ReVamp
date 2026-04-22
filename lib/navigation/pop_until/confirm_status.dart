import 'package:flutter/material.dart';
import 'package:flutter_basics/navigation/pop_until/home_page.dart';

class ConfirmStatus extends StatelessWidget {
  const ConfirmStatus({super.key});

  // navigate to the very first route fo the app
  void moveHome(BuildContext context) {
    Navigator.popUntil(
        context, (route) => route.isFirst);
  }

  void navInitial(BuildContext context){
    Navigator.popUntil(context, (route) => route.isFirst);
  }

  // navigate to particula page - application only with pushNamed()
  void navHome(BuildContext context){
    Navigator.popUntil(context, ModalRoute.withName('/home'),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Placed'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => navHome(context),
          child: const Text('Return to Home Screen'),
        ),
      ),
    );
  }
}
