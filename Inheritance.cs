using System;
public class Base
{
    public int i,j;
    public void Set(int a,int b)
    {
        i=a;
        j=b;
    }
    public void Show()
    {
        Console.WriteLine(i+""+j);
    }
}
public class Derived:Base
{
    public int k;
    public Derived(int x)
    {
        k=x;
    }
    public void ShowK()
    {
        Console.WriteLine(k);
    }
}
class Program
{
static void Main()
{
 Derived obj=new Derived(3) ;
 obj.Set(1,2);
 obj.Show();
 obj.ShowK();
}
}