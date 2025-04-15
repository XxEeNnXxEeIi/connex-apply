class MySort{
    // Sort แบบไม่ใช้ Library (Bubble Sort)
    public void SortArray(int[] array, bool ascending)
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