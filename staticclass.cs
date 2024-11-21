using System;
public class BankAccount
{
  
    public static double Total;
    public static double  Calculate(double balance , double rate)
    {
      Total=balance*rate;
      return Total;
    }
}
public class program 
{
  static void Main()
  {
 double Interest=BankAccount.Calculate(8000.00);
 Console.WriteLine("Total Interest:" + Interest);
    
  }
}