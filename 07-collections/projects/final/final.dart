// Copyright (c) 2020 Razeware LLC
// For full license & permission details, see LICENSE.

void main() {
  /// Lists
  fixedLengthLists();
  growableLists();
  mutableAndImmutableLists();
  collectionIf();
  collectionFor();
  propertiesOfLists();
  loopingOverElementsOfList();

  /// Operations on a list
  spreadOperator();
  mappingOverList();
  filteringList();
  sortingList();
  reducingList();
  combiningHigherOrderMethods();

  /// Sets
  creatingSets();
  operationsOnSets();
  intersectionsAndUnions();

  /// Maps
  creatingEmptyMaps();
  initializingMapWithValues();
  operationsOnMaps();
  propertiesOfMaps();
  checkingForKeyValueExistence();
  loopingOverElementsOfMap();
}

void fixedLengthLists() {
  final pastries = List<String>(4);
  pastries[0] = 'cookies';
  pastries[1] = 'cupcakes';
  pastries[2] = 'donuts';
  pastries[3] = 'pie';

  final index = pastries.indexOf('pie');
  final value = pastries[index];
  print('index: $index, value: $value');

  print(pastries);
  print(pastries[1]);

  // pastries.add('croissant');
}

void growableLists() {
  // var desserts = List<String>();
  // var desserts = [];
  var desserts = <String>[];
  print(desserts.length);

  desserts.add('brownies');
  print(desserts.length);

  desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  desserts.add('croissant');
  print(desserts.length);

  desserts.remove('cupcakes');
  print(desserts);
}

void mutableAndImmutableLists() {
  final pastries = List<String>(4);
  pastries[0] = 'cookies';
  pastries[1] = 'cupcakes';
  pastries[2] = 'donuts';
  pastries[3] = 'pie';

  print(pastries[1]);
  pastries[1] = 'cake';
  print(pastries[1]);

  // var desserts = <String>[];
  // desserts.add('brownies');
  // desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];

  final desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  // desserts = [];
  // desserts = ['cake', 'ice cream'];
  // desserts = someOtherList;
  desserts.remove('cookies');
  desserts.remove('cupcakes');
  desserts.add('ice cream');

  // const desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  // desserts.add('brownie');
  // desserts.remove('pie');
  // desserts[0] = 'fudge';

  // final desserts = const ['cookies', 'cupcakes', 'donuts', 'pie'];

  final modifiableList = [DateTime.now(), DateTime.now()];
  final unmodifiableList = List.unmodifiable(modifiableList);
  print(unmodifiableList);
}

void collectionIf() {
  const peanutAllergy = true;

  const candy = [
    'Junior Mints',
    'Twizzlers',
    if (!peanutAllergy) 'Reeses',
  ];
  print(candy);
}

void collectionFor() {
  const deserts = ['gobi', 'sahara', 'arctic'];
  var bigDeserts = [
    'ARABIAN',
    for (var desert in deserts) desert.toUpperCase(),
  ];
  print(bigDeserts);
}

void propertiesOfLists() {
  const desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];

  print(desserts.first);
  print(desserts.last);

  print(desserts.isEmpty);
  print(desserts.isNotEmpty);

  print(desserts.length == 0);
  print(desserts.length != 0);
}

void loopingOverElementsOfList() {
  const desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  for (var dessert in desserts) {
    print(dessert);
  }
  desserts.forEach((dessert) => print(dessert));
  desserts.forEach(print);
}

void spreadOperator() {
  const pastries = ['cookies', 'croissants'];
  const candy = ['Junior Mints', 'Twizzlers', 'M&Ms'];
  const desserts = ['donuts', ...pastries, ...candy];
  print(desserts);

  List<String> coffees;
  final hotDrinks = ['green tea', ...?coffees];
  print(hotDrinks);
}

void mappingOverList() {
  const numbers = [1, 2, 3, 4];
  // final squares = numbers.map((number) => number * number);
  final squares = numbers.map((number) => number * number).toList();
  print(squares);
}

void filteringList() {
  const numbers = [1, 2, 3, 4];
  final squares = numbers.map((number) => number * number).toList();
  final evens = squares.where((square) => square.isEven);
  print(evens);

  const desserts = ['cookies', 'cake', 'donuts', 'pie'];
  final dessert = desserts.firstWhere((myString) => myString.length < 5);
  print(dessert);
}

void sortingList() {
  final desserts = ['cookies', 'pie', 'donuts', 'brownies'];
  desserts.sort();
  print(desserts);

  const constantList = ['cookies', 'pie', 'donuts', 'brownies'];
  // constantList.sort();

  var dessertsReversed = desserts.reversed;
  print(dessertsReversed);

  // final desserts = ['cookies', 'pie', 'donuts', 'brownies'];
  // final dessertsReversed = desserts.reversed;
  // print(desserts);
  // print(dessertsReversed);

  desserts.sort((d1, d2) => d1.length.compareTo(d2.length));
  print(desserts);
}

void reducingList() {
  const amounts = [199, 299, 299, 199, 499];
  final total = amounts.reduce((sum, element) => sum + element);
  print(total);
}

void combiningHigherOrderMethods() {
  const desserts = ['cake', 'pie', 'donuts', 'brownies'];
  final bigTallDesserts = desserts
      .where((dessert) => dessert.length > 5)
      .map((dessert) => dessert.toUpperCase());
  print(bigTallDesserts);
}

void creatingSets() {
  // final someSet = Set<int>();
  final someSet = <int>{};
  final anotherSet = {1, 2, 3, 1};
  print(anotherSet);
}

void operationsOnSets() {
  final anotherSet = {1, 2, 3, 1};
  print(anotherSet.contains(1));
  print(anotherSet.contains(99));

  final someSet = <int>{};
  someSet.add(42);
  someSet.add(2112);
  someSet.add(42);
  print(someSet);

  someSet.remove(2112);
  print(someSet);

  someSet.addAll([1, 2, 3, 4]);
  print(someSet);
}

void intersectionsAndUnions() {
  final setA = {8, 2, 3, 1, 4};
  final setB = {1, 6, 5, 4};

  final intersection = setA.intersection(setB);
  print(intersection);

  final union = setA.union(setB);
  print(union);
}

void creatingEmptyMaps() {
  // final emptyMap = Map<String, int>();
  final emptyMap = <String, int>{};
  print(emptyMap.length);
  final emptySomething = {};
  final mySet = <String>{};
}

void initializingMapWithValues() {
  final inventory = {
    'cakes': 20,
    'pies': 14,
    'donuts': 37,
    'cookies': 141,
  };
  print(inventory);

  final digitToWord = {
    1: 'one',
    2: 'two',
    3: 'three',
    4: 'four',
  };
  print(digitToWord);

  // final treasureMap = {
  //   'garbage': 'in the dumpster',
  //   'glasses': 'on your head',
  //   'gold': 'in the cave',
  //   'gold': 'under your mattress',
  // };
  final treasureMap = {
    'garbage': ['in the dumpster'],
    'glasses': ['on your head'],
    'gold': ['in the cave', 'under your mattress'],
  };

  final myHouse = {
    'bedroom': 'messy',
    'kitchen': 'messy',
    'living room': 'messy',
    'code': 'clean',
  };
}

void operationsOnMaps() {
  final inventory = {
    'cakes': 20,
    'pies': 14,
    'donuts': 37,
    'cookies': 141,
  };
  print(inventory['cakes']);

  inventory['brownies'] = 3;
  print(inventory);

  inventory['cakes'] = 1;
  print(inventory['cakes']);

  inventory.remove('cookies');
  print(inventory);
}

void propertiesOfMaps() {
  final inventory = {'cakes': 1, 'pies': 14, 'donuts': 37, 'brownies': 3};
  print(inventory.isEmpty);
  print(inventory.isNotEmpty);
  print(inventory.length);

  print(inventory.keys);
  print(inventory.values);
}

void checkingForKeyValueExistence() {
  final inventory = {'cakes': 1, 'pies': 14, 'donuts': 37, 'brownies': 3};
  print(inventory.containsKey('pies'));
  print(inventory.containsValue(42));
}

void loopingOverElementsOfMap() {
  final inventory = {'cakes': 1, 'pies': 14, 'donuts': 37, 'brownies': 3};
  // for (var item in inventory) {
  //   print(inventory[item]);
  // }

  for (var item in inventory.keys) {
    print(inventory[item]);
  }

  inventory.forEach((key, value) => print('$key -> $value'));
}
