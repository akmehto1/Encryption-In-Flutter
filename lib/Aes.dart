import 'package:encrypt/encrypt.dart' as ency;

class Encryptor_ {
  static final key = ency.Key.fromUtf8('ShaniaTwain2023f');
  static final iv = ency.IV.fromLength(16);
  static final encrypter =
  ency.Encrypter(ency.AES(key, mode: ency.AESMode.cbc, padding: 'PKCS7'));

   String encrypt(plainText) {
    return encrypter.encrypt(plainText, iv: iv).base64.toString();
  }

   String decrypt(plainText) {
    ency.Encrypted encrypted = ency.Encrypted.from64(plainText);
    return encrypter.decrypt(encrypted, iv: iv).toString();
  }
}

