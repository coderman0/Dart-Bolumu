void main() {
  
  var nums = [5, 7, 8, 'Anan', true]; // Listeler 
  nums.add(7);
  nums.addAll([5, 7, 3, 2]);
  
  
  nums.remove(8); // silme işlemi listeden element silme
  nums.removeAt(0); // buda index'e göre hani her element 0 1 2 3 4 diye gider ya öyle düşün
  // nums.removeWhere((element) => element >= 5 ); // 5 ten büyük yada eşit olan her şeyi sil demek ama hata alırsın çünkü orda sadece sayılar değil başka textlerde var
  
  
  
  
  print('First: ${nums.first} Last: ${nums.last} Uzunluk: ${nums.length} ');
  
}