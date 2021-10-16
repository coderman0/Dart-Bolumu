const num = 10;
var word = 'Hello Anan';

void main() {
  var point = 4.5;
  // point = 5.4;
  // point = point + 6;

  // String anan;

  bool anan;
  bool baban;

  anan = false;
  baban = true;

  print('Amanın: $point Anı True or False?: $anan $baban');

  dynamic dynamicData = 5;
  dynamicData = 'word';
  dynamicData = false;
  print(dynamicData);

  var a = 15, b = 5;

  print('+ : ${a + b}');
  print('- : ${a - b}');
  print('* : ${a * b}');
  print('/ : ${(a / b).toInt() }');
  print('/ : ${(a ~/ b)}');
  print('% : ${a % b}');
}
