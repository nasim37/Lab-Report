using System;
public class Shape{
  public virtual void Draw()
  {
    Console.WriteLine("Drawing a Shape");
  }
}
public class Circle:Shape
{
  public override void Draw()
  {
    Console.WriteLine("Drawing a Circle");
  }
}
public class Rectangle:Shape
{
  public override void Draw()
  {
    Console.WriteLine("Drawing a Rectangle");
  }
}
class Program
{
  static void Main()
  {
    Shape shape1=new Shape();
    Circle shape2=new Circle();
    Rectangle shape3=new Rectangle();
    shape1.Draw();
    shape2.Draw();
    shape3.Draw();
    
     
  }
}