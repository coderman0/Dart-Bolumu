void main() {
  const animals = <String>['Dog', 'Cat', 'Bird'];

  const animalName1 = 'Elephant';
  const animalName2 = 'Cat';

  if (animals.contains(animalName1)) {
    print('Birinci Hayvan listede var');
  } else if (animals.contains(animalName2)) {
    print('İkinci Hayvan listede var');
  } else {
    print('Hayvan listede yok');
  }

  switch (animalName2) {
    case 'Dog':
    case 'Cat':
    case 'Bird':
      {
        print(animalName2);
        break;
      }
    default:
      {
        print('Animal Does Not Exist');
      }
  }
}
