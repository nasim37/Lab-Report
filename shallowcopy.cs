using System;
public class BankAccount
{
   string Name;
   double Balance;
   
   public string name
   {
    get{return Name;}
    set{Name=value;}
   }
   public double balance{
    get{return Balance;}
    set{Balance=value;}
   }
   public BankAccount(string _name,double  _balance)
   {
    this.name=_name;
    this.balance= _balance;
   }
}
class Bank

{
    static void Main()
    {
    BankAccount b1 =new BankAccount("King Khan",5000);
    BankAccount b2=b1;
    BankAccount b3=b1;
    b2.balance=800;
    Console.WriteLine("acc1 Balance:" + b1.balance);
    Console.WriteLine("acc2 Balance:" + b2.balance);
    Console.WriteLine("acc3 Balance:" + b3.balance);

    }
