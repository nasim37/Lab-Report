using System;
public class Point
{
  public int real;
  public int imaginary;
  public Point(int r,int i)
  {
    real=r;
    imaginary=i;
    
  }
  public static Point operator+(Point R, Point I)
  {
    return new Point(R.real+I.real,R.imaginary+I.imaginary);
  }
  public void Display()
  {
    Console.WriteLine(real + "+" + imaginary+"i");
  }
}
public class program
{
  static void Main() 
  {
   Point p1=new Point (5,7);
    Point p2=new Point (8,9);
    Point result= p1+ p2;
    p1.Display();
     p2.Display();
     result.Display();
  }
}