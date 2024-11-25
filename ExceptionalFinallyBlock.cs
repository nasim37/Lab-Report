using System;
class Program
{
  static void Main()
  {
    try{
      int age =GetAgeFromUser();
      if(age<0)
      {
        throw new ArgumentException("Age cannot be negetive.");
      }
      Console.WriteLine($"User,s age is:{age}");
    }
    catch(ArgumentException e){
      Console.WriteLine($"Error:{e.Message}");
    }
  }
    static int GetAgeFromUser()
    {
      return -25;
    }
    
  }