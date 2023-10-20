namespace dekoeky.hello_world;

public static class Greeting
{
  public static string Get()
  {
    return "Hello, World!" + Environment.NewLine + "Greetings, dekoeky";
  }
  public static void Perform()
  {
    Console.WriteLine(Get());
  }
}
