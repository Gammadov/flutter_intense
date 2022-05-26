/*

void main() {
  awaited();
  print('&&&&&&&&&&&&&&');
}

void awaited() async {
  print('before Future AWAITED');
  // /*
  await Future.delayed(Duration(seconds: 1));
  print('Future AWAITED handling');
  print('after Future AWAITED');
   // */

  /*
  Future.delayed(Duration(seconds: 1)).then((value) {
    print('Future AWAITED handling');
    print('after Future AWAITED');
  });
   */
  // print('00000'); // при await не получится так писать
}


 */

import 'dart:io';

void main() async {
  final myFile = File('bin/les_61_80/les79/text.txt');
  myFile.create(recursive: true);
  // myFile.writeAsString('строка\n');
  // for (int i = 0; i < 10; i++) {
  //    await myFile.writeAsString('строка $i\n', mode: FileMode.append);
  //  }
  // myFile.writeAsString('');
  // myFile.delete();
  // myFile.readAsString().then((value) => print(value));
  // print(await myFile.readAsString());
}
