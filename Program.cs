using System;
public class BankAccount
{
  public string Name;
  public double Balance;
  private double AccountNo;
  public BankAccount(string _name,double _balance, double _acc)
  {
    Name=_name;
    Balance=_balance;
    AccountNo=_acc;
  }
  public double accountno
  {
    get{return AccountNo;}
    set{AccountNo=value;}
  }
  public void Print()
  {
    Console.WriteLine("Acc Name:"+ Name);
     Console.WriteLine("Acc Balance:$"+ Balance);
      Console.WriteLine("Acc No:"+ accountno);
  }
  static void Main()
  {
    BankAccount b1=new BankAccount("Nasim", 5000,68905623);
  b1.Print();
   BankAccount b2=new BankAccount("Lamia", 300,82389657);
  BankAccount b3=new BankAccount("Numan", 8000,80653789);
    b3.Print();
     BankAccount b4=new BankAccount("Prity", 00, 97790040);
  }
}