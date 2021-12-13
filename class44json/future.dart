/** Uncomplete */

// void main(List<String> args) {
//   Future.delayed(Duration(seconds: 3),
//   () => 'Hello World',
//   );
// }

/** Complete with value */

// void main(List<String> args) {
//   Future.delayed(Duration(seconds: 1),
//   () => 'Hello World',
//   ).then((value) => print(value));


//   print('Waiting...');
// }

/** Complete with Error */
void main(List<String> args) {
 Future.delayed(Duration(seconds: 3),
 () => throw 'try again',
 ).then((value) => print(value)).catchError((err) => print('Error $err'));

 print('Waiting...');
}