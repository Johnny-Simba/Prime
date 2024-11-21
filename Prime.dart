import 'dart:io';

bool isPrime(int number){
  int div = 0;
  for(int i = 2; i < number; i++){
    if(number % i == 0){
      div++;
    }
  }
  if(div == 0 && number != 1 && number != 0){
    return true;
  }
  else{
    return false;
  }
}
void primeNumbersInRange(int start, int end){
  for(int i = start + 1; i < end; i++){
    if(isPrime(i)){
      stdout.write("$i ");
    }
  }
}
void takeTwoNumbers(){
  print("Enter two numbers to print prime numbers between them: ");
  int number1 = int.parse(stdin.readLineSync()!);
  int number2 = int.parse(stdin.readLineSync()!);
  if(number1 < number2){
    primeNumbersInRange(number1, number2);
  }
  else{
    print('Invalid Input, The first number should be less than second number!');
    handleInValidInput();
  }
}
void handleInValidInput(){
  print('Want to Enter numbers again ? (y/n)');
  String choice = stdin.readLineSync()!;
  choice = choice.toLowerCase();
  switch(choice){
    case 'y' :
      takeTwoNumbers();
    case 'n' :
      return;
    default :
      print('Invalid Input!\nChoice Should be y or n');
      handleInValidInput();
  }
}
void main(){

  takeTwoNumbers();

}
