using System;

public abstract class Shape
{
    public abstract void Draw(); // Abstract method
}

public class Circle : Shape
{
    public override void Draw()
    {
        Console.WriteLine("Drawing a Circle");
    }
}

public class Rectangle : Shape
{
    public override void Draw()
    {
        Console.WriteLine("Drawing a Rectangle");
    }
}
public class Prism : Shape
{
    public override void Draw()
    {
        Console.WriteLine("Drawing a Prism");
    }
}

class Program
{
    static void Main()
    {
        Shape shape1 = new Circle();    
        Shape shape2 = new Rectangle();
        Shape shape3 = new Prism();

        shape1.Draw();
        shape2.Draw();
        shape3.Draw();
    }
}