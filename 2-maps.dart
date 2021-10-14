void main() {
  Map<int, String> aylar = {1: 'Ocak', 2: 'Şubat', 3: 'Mart'};
  
  aylar[4] = 'Nisan';
  
  print(aylar[1]);
  print(aylar.keys);
  print(aylar.values);
  print(aylar);
  
  
  aylar.clear(); // Bu tüm fonksiyonları siler.//
  
  
}