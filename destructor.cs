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
  ~BankAccount()
  {
    Console.WriteLine("Destructor Called for:"+ Accountno);
  }
  
  static void Main()
  {
    BankAccount b1 = new BankAccount("NasimUddinKhan",2904,902218888891,"BxHhhAowonnaM");
    BankAccount b2 =new BankAccount(b1);
    BankAccount b3=new BankAccount(b2);
    b2.balance=9009;
    b3.balance=3099;
    Console.WriteLine("Acc01:"+b1.balance);
    Console.WriteLine("Acc02:"+b2.balance);
    Console.WriteLine("Acc03:"+b3.balance);
 

  }
}
