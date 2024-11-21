using System;

public interface IPrinter
{
    void Print(string Document);
}

public interface IScanner
{
    void Scan(string Document);
}

public interface ICopier
{
    void Copy(string Document);
}

public class MultiFunctionDevice : IPrinter, IScanner, ICopier
{
    public void Print(string Document)
    {
        Console.WriteLine("Printing Document: " + Document);
    }

    public void Scan(string Document)
    {
        Console.WriteLine("Scanning Document: " + Document);
    }

    public void Copy(string Document)
    {
        Console.WriteLine("Copying Document: " + Document);
    }
}

public class OnlyPrinterDevice : IPrinter
{
    public void Print(string Document)
    {
        Console.WriteLine("Printing Document: " + Document);
    }
}

public class ScanandCopy : IScanner, ICopier
{
    public void Scan(string Document)
    {
        Console.WriteLine("Scanning Document: " + Document);
    }

    public void Copy(string Document)
    {
        Console.WriteLine("Copying Document: " + Document);
    }
}

class Program
{
    static void Main()
    {
        MultiFunctionDevice mfd = new MultiFunctionDevice();
        Console.WriteLine("Using MultiFunctionDevice:");
        mfd.Print("ProjectReport.pdf");
        mfd.Scan("ProjectReport.pdf");
        mfd.Copy("ProjectReport.pdf");
        
        OnlyPrinterDevice printer = new OnlyPrinterDevice();
        Console.WriteLine("\nUsing PrinterOnlyDevice:");
        printer.Print("Resume.pdf");

        // Using Scan and Copy device
        ScanandCopy scanCopy = new ScanandCopy();
        Console.WriteLine("\nUsing ScanandCopy Device:");
        scanCopy.Scan("Invoice.pdf");
        scanCopy.Copy("Invoice.pdf");
    }
}