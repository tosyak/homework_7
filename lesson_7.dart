import 'dart:io';

void main() {
  // generateList(34);
  // sumNumbers(12345);
  // changeMiddleNum(111);
  // weekDay(8);
  // printLoading(8);
  // sixTask(3, 3, 5);
  // userData();
  // average();
  // sumNum(1);
  // getAge(156);
  // input();
  binarySearch();
}

// 1) Создайте и заполните массив. Выведите первый и последний элемент
// списка.

void generateList(int listLength) {
  var list = new List<int>.generate(listLength, (i) => i + 1);
  print('list first ${list.first}, list last ${list.last}');
}

// 2) Дано трехзначное число. Найдите произведение их цифр.

void sumNumbers(int num) => print(
    num.toString().split('').map((c) => int.parse(c)).reduce((a, b) => a * b));

// 3) Дано трехзначное число. Замените среднюю цифру на ноль.

void changeMiddleNum(int num) {
  var splitNum = num.toString().split('');
  splitNum[1] = '0';
  int parseIterable = int.parse(splitNum.join());
  print(parseIterable);
}
// 4) Дан номер дня недели. Выведите название дня недели. Решение через if и
// switch case.

void weekDay(int num) {
  if (num == 1) {
    print('monday');
  } else if (num == 2) {
    print('tuesday');
  } else if (num == 3) {
    print('wednesday');
  } else if (num == 4) {
    print('thursday');
  } else if (num == 5) {
    print('friday');
  } else if (num == 6) {
    print('saturday');
  } else if (num == 7) {
    print('sunday');
  } else {
    print('there is no such week day');
  }

  switch (num) {
    case 1:
      print('monday');
      break;
    case 2:
      print('tuesday');
      break;
    case 3:
      print('wednesday');
      break;
    case 4:
      print('thursday');
      break;
    case 5:
      print('friday');
      break;
    case 6:
      print('saturday');
      break;
    case 7:
      print('sunday');
      break;
    default:
      print('there is no such week day');
  }
}

// 5) Вывести на экран 8 раз фразу "Loading...". Используйте цикл for
void printLoading(int loadingCount) {
  for (var i = 0; i < loadingCount; i++) {
    print('Loading...');
  }
}

// 6) Даны три числа. Если сумма двух из них равна третьему, то выведите
// такое равенство, если нет, то выведите произведение всех чисел.
void sixTask(int a, int b, int c) {
  if (a + b == c) {
    print('$a + $b = $c');
  } else {
    print('$a * $b * $c = ${a * b * c}');
  }
}

// 7) Анкета. С помощью stdin sdout реализуйте программу, которая
// запрашивает у пользователя имя, возраст, адрес, хобби.
// В конечном итоге вывести на экран информацию о пользователе:
// Вас зовут: XXX
// Ваш возраст: XXX
// Ваш адрес: XXX
// Ваше хобби: XXX
void userData() {
  String myName = 'vitali';
  String myAge = '33';
  String myAdress = '10';
  String myHobby = 'skateboard';

  stdout.write("What is your name?\n");
  var name = stdin.readLineSync();
  stdout.write("How old are you?\n");
  var age = stdin.readLineSync();
  stdout.write("Input your adress, please\n");
  var adress = stdin.readLineSync();
  stdout.write("What is your hobby?\n");
  var hobby = stdin.readLineSync();
  print('''
Your name: $name
Your age: $age
Your adress: $adress
Your hobby: $hobby''');
  if (name == myName &&
      age == myAge &&
      adress == myAdress &&
      hobby == myHobby) {
    print('Lets be friends');
  } else if (name == myName) {
    print('we are namesake');
  } else if (age == myAge) {
    print('we are fellows');
  } else if (adress == myAdress) {
    print('we are neighbors');
  } else if (hobby == myHobby) {
    print('we have same hobby');
  }
}

// 8) Поставить проверку к предыдущему заданию.
// Создайте переменные myName myAge и.т.д
// Если ваши имена совпали - вывести на экран «У нас одинаковое имя»
// Если ваш возраст совпал - вывести на экран «Мы ровесники»
// Если ваш адрес совпал - вывести на экран «Мы соседи»
// Если ваше хобби совпало - вывести на экран «У нас одинаковое хобби»
// Если совпали все поля - вывести на экран «Давай дружить»
// 9) В диапазоне чисел от 1 до 100 найти среднее арифметическое чисел.
void average() {
  int i = 1;
  int sum = 0;

  do {
    sum = sum + i;
    i++;
  } while (i <= 100);

  num result = sum / 100;
  print(result);
}
// 10) При заданном целом числе n посчитайте n + nn + nnn.

void sumNum(int num) => print(num +
    int.parse(num.toString() + num.toString()) +
    int.parse(num.toString() + num.toString() + num.toString()));

// 11) Дан возраст. Если возраст до 7, вывести "Вам в садик". Если возраст с 7
// до 18, вывести "Вам в школу". Если возраст с 19 до 23, вывести "Вам в
// универ".Если возраст с 23 до 60, вывести "Вам на работу". Если возраст с 60
// до 100, вывести "Вы пенсионер". В противном случае вывести
// "Неправильный возраст".

void getAge(int age) => age < 7
    ? print('go to childrens garden')
    : age >= 7 && age <= 18
        ? print('go to school')
        : age > 19 && age < 23
            ? print('go to univercity')
            : age >= 23 && age < 60
                ? print('go to work')
                : age >= 60 && age < 100
                    ? print('go and chill')
                    : print('you are to old');

// 12) Дано шестизначное число, если сумма первых чисел равна сумме вторых
// трех чисел, вывести true, а иначе вывести false.

sumNumers() {
  int num = 123456;
  var numToString = num.toString().split('');
  if (int.parse(numToString[0]) +
          int.parse(numToString[1]) +
          int.parse(numToString[2]) ==
      int.parse(numToString[3]) +
          int.parse(numToString[4]) +
          int.parse(numToString[5])) {
    print('true');
  } else {
    print('false');
  }
}

// 13) Организовать беспрерывный ввод чисел с клавиатуры, пока
// пользователь не введёт 0. После ввода нуля, показать на экран количество
// чисел, которые были введены, их общую сумму и среднее арифметическое.
// Подсказка: необходимо объявить переменную-счетчик, которая будет считать
// количество введенных чисел, и переменную, которая будет накапливать
// общую сумму чисел.
// Обработать возможные ошибки.

void input() {
  var input = 0;
  var counter = 0;
  var sum = 0;
  List list = [];

  do {
    input = int.parse(stdin.readLineSync()!);
    counter++;
    sum += input;
    list.add(input);
  } while (input != 0);
  print('''
=-=-=-=-=-=-=-
counter: $counter
sum: $sum
average: ${sum / counter}
=-=-=-=-=-=-=-
all nums: $list
''');
}

binarySearch() {
  // var processResult = upperRange / 2;

  var answer = '';
  var lowerRange = 0;
  var upperRange = 128;

  do {
    stdout.write(
        "Is your number bigger or less ${upperRange}, input b/l or yes \n");
    answer = stdin.readLineSync()!;
    if (answer == 'l') {
      var upperRes = upperRange / 2;
      upperRange = upperRes.floor();
      print(upperRange);
      print(upperRes);
    } else if (answer == 'b') {
      var lowerRes = upperRange / 2;
      lowerRange = lowerRes.ceil();

      var upperRes = (upperRange + lowerRange) / 2;
      upperRange = upperRes.floor();
      print(lowerRange);
      // print(lowerRes);
      print(upperRange);
    }
  } while (answer != 'yes');
}

//   
//
//
//
//