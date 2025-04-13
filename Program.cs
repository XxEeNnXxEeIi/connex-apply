using System;
using System.Collections.Generic;

class Program
{
    static void Main()
    {
        // 1. รับค่า input เป็นจำนวนเต็ม แล้วเช็คว่าเลขคู่หรือเลขคี่
        Console.Write("กรุณากรอกหมายเลขเพื่อหาจำนวนเลขคู่ หรือ เลขคี่: ");
        var input = Console.ReadLine();

        if (int.TryParse(input, out int num))
        {
            if (num % 2 == 0)
            {
                Console.WriteLine($"{num} เป็นเลขคู่");
            }
            else
            {
                Console.WriteLine($"{num} เป็นเลขคี่");
            }
        }
        else
        {
            Console.WriteLine("ล้มเหลว! กรุณากรอกเฉพาะตัวเลขจำนวนเต็ม");
            return;
        }

        // 2. รับ input ขนาดของ Array + สร้าง Array และ เติมเลข Random ที่ไม่ซ้ำ
        Console.Write("กรุณาใส่ตัวเลขเพื่อกำหนดจำนวนสมาชิกของ Array: ");
        var input2 = Console.ReadLine();

        if (int.TryParse(input, out int num2))
        {
            int[] arr = new int[num2];
            List<int> usedNumbers = new List<int>();
            Random rand = new Random();

            Console.WriteLine("เริ่มการสุ่มเลขเพิ่มเข้าไปใน Array...");
            for (int i = 0; i < num2;)
            {
                int randomNum = rand.Next(1, num2 + 2); // random 1 ถึง n+1

                if (!usedNumbers.Contains(randomNum))
                {
                    arr[i] = randomNum;
                    usedNumbers.Add(randomNum);
                    i++;
                }
            }

            Console.WriteLine("ข้อมูลสมาชิกใน Array:");
            foreach (int val in arr)
            {
                Console.Write(val + " ");
            }

            Console.WriteLine("\n");

            // 3. การใช้ switch-case เพื่อแสดงเมนู
            Console.WriteLine("กรุณาเลือกเมนูการเรียงลำดับ");
            Console.WriteLine("1. เรียงจากน้อยไปมาก");
            Console.WriteLine("2. เรียงจากมากไปน้อย");

            Console.Write("เมนูที่คุณเลือก? 1 หรือ 2: ");
            var choice = Console.ReadLine();

            if (int.TryParse(choice, out int menu))
            {
                switch (menu)
                {
                    case 1:
                        SortArray(arr, true);
                        Console.WriteLine("เรียงจากน้อยไปมาก:");
                        break;
                    case 2:
                        SortArray(arr, false);
                        Console.WriteLine("เรียงจากมากไปน้อย:");
                        break;
                    default:
                        Console.WriteLine("ล้มเหลว! กรุณาเลือกเมนูที่มีเท่านั้น");
                        break;
                }

                if(menu == 1 || menu == 2) 
                {
                    Console.WriteLine("\n");
                    
                    foreach (int val in arr)
                    {
                        Console.Write(val + " ");
                    }

                    Console.WriteLine("\n");

                    // 5. หาเลขใน array ที่มากที่สุด
                    int max = arr[0];
                    for (int i = 1; i < arr.Length; i++)
                    {
                        if (arr[i] > max)
                        {
                            max = arr[i];
                        }
                    }

                    Console.Write($"ค่ามากที่สุดใน array คือ: {max}");
                }
            }
            else
            {
                Console.WriteLine("ล้มเหลว! กรุณากรอกเฉพาะเมนูที่มีให้เลือก");
                return;
            }
        }
        else
        {
            Console.WriteLine("ล้มเหลว! กรุณากรอกเฉพาะตัวเลขจำนวนเต็ม");
            return;
        }
    }

    // Sort แบบไม่ใช้ Library (Bubble Sort)
    static void SortArray(int[] array, bool ascending)
    {
        for (int i = 0; i < array.Length - 1; i++)
        {
            for (int j = 0; j < array.Length - 1 - i; j++)
            {
                bool shouldSwap = ascending
                    ? array[j] > array[j + 1]
                    : array[j] < array[j + 1];

                if (shouldSwap)
                {
                    int temp = array[j];
                    array[j] = array[j + 1];
                    array[j + 1] = temp;
                }
            }
        }
    }
}
