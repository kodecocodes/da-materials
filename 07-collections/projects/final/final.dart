// Copyright (c) 2020 Razeware LLC
// For full license & permission details, see LICENSE.

void main() {
  /// Lists
  basicListOperations();
  mutableAndImmutableLists();
  listProperties();
  spreadOperator();
  collectionIf();
  collectionFor();
  loopingOverElementsOfList();

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

  /// Higher order methods
  mappingOverList();
  filteringList();
  consolidatingList();
  sortingList();
  combiningHigherOrderMethods();
}

void basicListOperations() {
  var desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  desserts = [];
  // var snacks = [];
  // List<String> snacks = [];
  var snacks = <String>[];
  desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  print(desserts);
  final secondElement = desserts[1];
  print(secondElement);
  final index = desserts.indexOf('pie');
  final value = desserts[index];
  print(index);
  print(value);
  desserts[1] = 'cake';
  print(desserts);
  desserts.add('brownies');
  print(desserts);
  desserts.remove('cake');
  print(desserts);
}

void mutableAndImmutableLists() {
  // var desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  // desserts = [];
  // desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];

  // final desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  // desserts = [];
  // desserts = ['cake', 'ice cream'];
  // desserts = someOtherList;

  // final desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  // desserts.remove('cookies');
  // desserts.remove('cupcakes');
  // desserts.add('ice cream');

  // const desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  // desserts.add('brownie');
  // desserts.remove('pie');
  // desserts[0] = 'fudge';

  final desserts = const ['cookies', 'cupcakes', 'donuts', 'pie'];
  final modifiableList = [DateTime.now(), DateTime.now()];
  final unmodifiableList = List.unmodifiable(modifiableList);
}

void listProperties() {
  const drinks = ['water', 'milk', 'juice', 'soda'];
  print(drinks.first);
  print(drinks.last);
  print(drinks.isEmpty);
  print(drinks.isNotEmpty);
  print(drinks.length == 0);
  print(drinks.length > 0);
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

void loopingOverElementsOfList() {
  const desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  for (var dessert in desserts) {
    print(dessert);
  }
  desserts.forEach((dessert) => print(dessert));
  desserts.forEach(print);
}

void creatingSets() {
  // final Set<int> someSet = {};
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
  // final Map<String, int> emptyMap = {};
  final emptyMap = <String, int>{};
  final emptySomething = {};
  final mySet = <String>{};
  print(emptyMap.length);
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

  final numberOfCakes = inventory['cakes'];
  print(numberOfCakes);

  inventory['brownies'] = 3;
  print(inventory);

  inventory['cakes'] = 1;
  print(inventory);

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

  for (final entry in inventory.entries) {
    print('${entry.key} -> ${entry.value}');
  }
}

void mappingOverList() {
  const numbers = [1, 2, 3, 4];
  final squares = numbers.map((number) => number * number);
  print(squares);
  print(squares.toList());
}

void filteringList() {
  const numbers = [1, 2, 3, 4];
  final squares = numbers.map((number) => number * number);
  final evens = squares.where((square) => square.isEven);
  print(evens);

  const desserts = ['cookies', 'cake', 'donuts', 'pie'];
  final dessert = desserts.firstWhere((word) => word.length < 5);
  print(dessert);
}

void consolidatingList() {
  const amounts = [199, 299, 299, 199, 499];
  final total = amounts.reduce((sum, element) => sum + element);
  // final total = amounts.fold(0, (sum, element) => sum + element);
  print(total);
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

void combiningHigherOrderMethods() {
  const desserts = ['cake', 'pie', 'donuts', 'brownies'];
  final bigTallDesserts = desserts
      .where((dessert) => dessert.length > 5)
      .map((dessert) => dessert.toUpperCase());
  print(bigTallDesserts);
}
