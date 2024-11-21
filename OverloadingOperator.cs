using System;

public class BankAccount
{
    public double Balance;

    public BankAccount(double balance)
    {
        Balance = balance;
    }

    public static BankAccount operator +(BankAccount account, double deposit)
    {
        account.Balance += deposit;
        Console.WriteLine( "Balance:$" + account.Balance);
        return account;
    }

    public static BankAccount operator -(BankAccount account, double withdraw)
    {
        if (withdraw > account.Balance)
        {
            Console.WriteLine("Insufficient balance for withdrawal!");
        }
        else
        {
            account.Balance -= withdraw;
            Console.WriteLine( "Balance:$" +account.Balance);
        }
        return account;
    }

    public void Print()
    {
        Console.WriteLine("Current Balance:$" + Balance );
    }
}

class Program
{
    static void Main()
    {
        BankAccount account = new BankAccount(500);
        
        account.Print();

        account = account + 400;

        account = account - 600;
    }
}