library cryptography;

import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:package_info_plus/package_info_plus.dart';

class Cryptography {
  static String a3375b803f121a8bf2b2a9f2ff5a5bcb = "fingerprint";

  Future<PackageInfo> _39edf78693ccba50ce010cbad777b230() async {
    return await PackageInfo.fromPlatform();
  }

  Future<String> encrypt(
      String secureKey, String purchaseCode, String data, String encryptionKey,
      {bool addFingerprint = true}) {
    return _39edf78693ccba50ce010cbad777b230()
        .then((b554e735f1b6649fec9343f8b2173bbf) {
      String bad49d8aaa4022b3590cbb5a3899cf6b = utf8.decode(
              base64Decode("Yzc5MTUxOGM4MmY3ZDdiZmE0ZDkyM2MzY2RhMGViOWI=")) +
          secureKey;
      String f2552faa60b432865850ff9da5302d24 = purchaseCode +
          b554e735f1b6649fec9343f8b2173bbf.packageName +
          a3375b803f121a8bf2b2a9f2ff5a5bcb;
      String c55478733ccdc3e53b4f7c5cb75c4c22 = sha1
          .convert(utf8.encode(f2552faa60b432865850ff9da5302d24))
          .toString();
      if (c55478733ccdc3e53b4f7c5cb75c4c22 !=
          bad49d8aaa4022b3590cbb5a3899cf6b.substring(32)) {
        throw Exception(utf8.decode(base64Decode(
            "SW52YWxpZCBwdXJjaGFzZSBjb2RlLCBvciB0aGlzIHB1cmNoYXNlIGNvZGUgaXMgbm90IHJlbGF0ZWQgdG8gdGhlIHBhY2thZ2UgbmFtZQ==")));
      }

      String d2659b9cf1aeca1d9bd6dbf901fc073f = data;

      if (addFingerprint) {
        d2659b9cf1aeca1d9bd6dbf901fc073f =
            a3375b803f121a8bf2b2a9f2ff5a5bcb + d2659b9cf1aeca1d9bd6dbf901fc073f;
      }

      var b1702d00e66e64c102327279339f04b9 =
          d2659b9cf1aeca1d9bd6dbf901fc073f.length;
      var ef2692bac647a98ac66d5d7bcf2d86ba = [];
      var kp = 0;
      var kl = encryptionKey.length - 1;
      if (!addFingerprint) {
        var f85db81d6628aff3a99fd821b10c963c =
            d2659b9cf1aeca1d9bd6dbf901fc073f.split(",");
        for (var i = 0; i < f85db81d6628aff3a99fd821b10c963c.length - 1; i++) {
          var other = int.parse(f85db81d6628aff3a99fd821b10c963c[i]) ^
              encryptionKey[kp].codeUnits[0];
          ef2692bac647a98ac66d5d7bcf2d86ba.insert(i, other);
          kp = (kp < kl) ? (++kp) : (0);
        }
      } else {
        for (var i = 0; i < b1702d00e66e64c102327279339f04b9; i++) {
          var other = d2659b9cf1aeca1d9bd6dbf901fc073f[i].codeUnits[0] ^
              encryptionKey[kp].codeUnits[0];
          ef2692bac647a98ac66d5d7bcf2d86ba.insert(i, other);
          kp = (kp < kl) ? (++kp) : (0);
        }
      }

      String ca3ea3a202caf85043f676bef886fa90 =
          c46dac977d4da9008bcf603e27e66d50(
              ef2692bac647a98ac66d5d7bcf2d86ba, addFingerprint);

      if (addFingerprint) {
        ca3ea3a202caf85043f676bef886fa90 =
            a3375b803f121a8bf2b2a9f2ff5a5bcb + ca3ea3a202caf85043f676bef886fa90;
      }

      return ca3ea3a202caf85043f676bef886fa90;
    }).catchError((e) {
      return e.toString();
    });
  }

  Future<String> decrypt(
      String hash, String purchaseCode, data, String encryptionKey) {
    return encrypt(hash, purchaseCode, data, encryptionKey,
        addFingerprint: false);
  }

  static String c46dac977d4da9008bcf603e27e66d50(
      d3677d64d076b47488a0d26b04493f8a, bool bd6758e2ce164c7a09a687ff013591ca) {
    var ba9caa1a4e25c6ebc6eb68f145a306e7 = "";
    for (var i = 0; i < d3677d64d076b47488a0d26b04493f8a.length; i++) {
      if (bd6758e2ce164c7a09a687ff013591ca) {
        ba9caa1a4e25c6ebc6eb68f145a306e7 +=
            (d3677d64d076b47488a0d26b04493f8a[i].toString() + ",");
      } else {
        ba9caa1a4e25c6ebc6eb68f145a306e7 +=
            String.fromCharCode(d3677d64d076b47488a0d26b04493f8a[i]);
      }
    }
    return ba9caa1a4e25c6ebc6eb68f145a306e7;
  }
}
