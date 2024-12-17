List<int> numbers = [1, 2, 3];
var query = numbers.Select(n => n * 2);
numbers.Add(4);
foreach (var number in query)
{
    Console.Write(number);
    Console.Write(" ");
}



