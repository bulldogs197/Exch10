import 'dart:math';

abstract class Shape{
  void calculateArea();
}
abstract class Drawable extends Shape{
    void draw();
}

class Circle extends Shape implements Drawable{
  double radius;
  Circle(this.radius);
  @override
  double calculateArea(){
    return pi * pow(radius, 2);
  }
  void draw(){
    print("Drawing Circle with radius: ${radius}");
  }
}

class Rectangle implements Drawable{
  double width;
  double height;
  Rectangle(this.width, this.height);
  @override
  double calculateArea(){
   return width*height;
  }
  void draw(){
    print("Drawing Rectangle with width: ${width} and height: ${height}");
  }
}
void main(List<String> args) {
  var circle = Circle(5);
  var rectangle = Rectangle(10, 20);
  circle.draw();
  print("Area of Circle: ${circle.calculateArea()}");
  rectangle.draw();
  print("Area of Rectangle: ${rectangle.calculateArea()}");
}