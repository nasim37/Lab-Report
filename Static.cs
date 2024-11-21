using System;
public static class BankAccount
{
  
    public static double rate=9.09;
    public static double balance=1500;
    public static double Total;
    public static double  Calculate()
    {
      Total = balance +=(balance*rate);
      return Total;
    }
     public static double  CalUpd(double balance)
    {
      Total = balance +=(balance*rate);
      return Total;
    }
public static void update(double newRate)
{
  rate=newRate;
}
}
 
public class program 
{
  static void Main()
  {
 double Interest=BankAccount.Calculate();
 
 Console.WriteLine("Total Interest: $" + Interest);
 BankAccount.update(0.09);
 Console.Write("Update Interest: $");
 Console.WriteLine(BankAccount.Calculate());
    
  }
}