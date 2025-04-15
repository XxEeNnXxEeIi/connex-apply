using System.Reflection.Metadata;

class EvenOrOdd()
{
    public string FindEvenOrOdd(int inputNumber)
    {
        if (inputNumber % 2 == 0)
        {
            return $"{inputNumber} เป็นเลขคู่";
        }
        else
        {
            return $"{inputNumber} เป็นเลขคี่";
        }
    }
}