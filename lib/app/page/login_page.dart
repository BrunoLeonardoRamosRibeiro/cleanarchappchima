import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/instagram.png'),
            Padding(padding: const EdgeInsets.all(8)),
            TextField(
              decoration: InputDecoration(
                labelText: 'Usuário',
              ),
            ),
            Padding(padding: const EdgeInsets.all(8)),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: TextButton(
                onPressed: () {

                },
                child: Text('LOGIN'),
              ),
            ),
            Padding(padding: const EdgeInsets.all(8)),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: TextButton(
                onPressed: () {

                },
                child: Text('CRIAR CONTA'),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
