void main(List<String> args) {
  int number = int.parse(args[0]);
  String result = number > 0 ? 'is positive' : number == 0 ? 'is zero' : 'is negative';
  print('$number $result');
}
