import 'package:crypto_encryption/Aes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
   final pass = TextEditingController();
   String? encryption;
   final encry=new Encryptor_();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Column(
          children:[
            Container(height:100),
              TextField(
              controller:pass,
              decoration:InputDecoration(
                hintText:"Enter Here"
              ),
            ),
            ElevatedButton(onPressed:(){

             encryption=encry.encrypt(pass.text);
             print(encryption);
            }, child:const Text("Encryption")),
            ElevatedButton(onPressed: (){
              print(pass.text);
              String decryption=encry.decrypt(encryption);
              print(decryption);
            }, child:const Text("Decryption"))
          ],
        ),
      ),
    );
  }
}
