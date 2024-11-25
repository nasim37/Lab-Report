using System;
class Program
{
  static void Main()
  {
    try{
      int a=10,b=0;
      Console.WriteLine(a/b);
    }
    catch(DivideByZeroException ex){
      Console.WriteLine("Error:Cannot divide by Zero.");
    }
    finally{
      Console.WriteLine("Execution Completed");
    }
  }

}