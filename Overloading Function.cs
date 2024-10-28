using System;

class Program
{
    static string MyFunc(string i)
    {
        return i;
    }

    static char MyFunc(char i)
    {
        return i;
    }

    static void Main()
    {
        Console.WriteLine(MyFunc("NasimUddinKhan"));
        Console.WriteLine(MyFunc('N'));
    }
}
