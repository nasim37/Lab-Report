using System;
namespace StudentManagementApp
{
    class Program
    {
        public static void Main()
        {
            string[] names = { "Nasim", "Tamim", "Numan", "Rokon", "Utshov" };
            long[] ids = { 2001, 2002, 2003, 2004, 2005 };
            string[] depts = { "IT", "BBA", "EEE", "ME", "Civil" };
            double[] gpas = { 3.8, 3.4, 3.2, 3.9, 3.6 };

            Student[] students = new Student[5];

            for (int i = 0; i < 5; i++)
            {
                students[i] = new Student(names[i], ids[i], depts[i], gpas[i]);
                students[i].PrintDetails();
            }

           
            students[2].ChangeDepartment("CSE");
            students[2].PrintDetails(); 
        }
    }

    class Student
    {
        public string NAME;
        public long ID;
        public string DEPT;
        public double GPA;

        
        public Student(string name, long id, string dept, double gpa)
        {
            this.NAME = name;
            this.ID = id;
            this.DEPT = dept;
            this.GPA = gpa;
        }

        
        public void PrintDetails()
        {
            
            Console.WriteLine($"Name: {NAME}, ID: {ID}, Department: {DEPT}, CGPA: {GPA}");
        }

        
        public void ChangeDepartment(string newDept)
        {
            this.DEPT = newDept;
            Console.WriteLine($"{NAME}'s department has been changed to {DEPT}.");
        }
    }
}