void main() {
  var a = 15, b = 5;
  if (a == b || b > 3) {
    print("Hello");
  } else if (a > b) {
    print('a > b');
  } else if (a < b) {
    print('a < b');
  } else {
    print('else');
  }
  
 // var res;
  
 // if(a == 5) {
 //   res = 10;
 // } else {
 //  res = 20;
 // }
  
  var res = a == 5 ? 10 : 20;
  
  var digit = 5;
  switch (digit) {
    case 4:
      print('Sayı 4');
      break;
      case 5:
      print('Sayı 5');
      break;
      case 6:
      print('Sayı 6');
      break;
      
    default:
      print('numara bulunamadı');
  }
  
}
