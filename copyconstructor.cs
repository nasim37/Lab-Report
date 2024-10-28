using System;
public class BankAccount
{
   string Name;
   double Balance;
  public double Accountno;
 public  string Receipt;
   
   public string name
   {
    get{return Name;}
    set{Name=value;}
   }
   public double balance{
    get{return Balance;}
    set{Balance=value;}
   }
   public BankAccount(string _name,double _balance,double _Account,string _receipt)
   {
    this.name=_name;
    this.balance= _balance;
    this.Accountno=_Account;
    this.Receipt=_receipt;
   }
public BankAccount(BankAccount oldAccount)
{
   this.name=oldAccount.name;
    this.balance= oldAccount.balance;
    this.Accountno=oldAccount.Accountno;
    this.Receipt=oldAccount.Receipt;
}
}
class Bank
{
  static void Main()
  {
    BankAccount b1 = new BankAccount("NasimKhan",98999,4449090344,"PuYbnSszA");
    BankAccount b2 =new BankAccount(b1);
    BankAccount b3=new BankAccount(b2);
    b2.balance=699;
    b3.balance=2008;
    Console.WriteLine("Acc01:"+b1.balance);
    Console.WriteLine("Acc02:"+b2.balance);
    Console.WriteLine("Acc03:"+b3.balance);
  }
}
