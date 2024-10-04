abstract class Greeting{
  void japan();
  void thai();
  void english();
}
abstract class NotYetGreet implements Greeting{
  void thai(){
    print("สวัดดี");
  }
  void english(){
    print("hallo");
  }
  void japan(){
    print("OhaYo");
  }
}

class Greet extends NotYetGreet implements Greeting{
    
}
void main(List<String> args) {
  var test = Greet();
  test.thai();
  test.english();
  test.japan();
}